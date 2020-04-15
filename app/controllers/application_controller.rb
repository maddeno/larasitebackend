class ApplicationController < ActionController::API
    before_action :authorized
 
    def encode_token(payload)
      # should store secret in env variable
      JWT.encode(payload, 'my_s3cr3t')
    end
   
    def auth_header
      # { Authorization: 'Bearer <token>' }
      request.headers['Authorization']
    end
   
    def decoded_token
      if auth_header
        token = auth_header.split(' ')[1]
        begin
          JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
        rescue JWT::DecodeError
          nil
        end
      end
    end
   
    def current_admin
      puts decoded_token 
      puts "=========================================================="
      if decoded_token
        admin_id = decoded_token[0]['admin_id']
        @admin = Admin.find(admin_id)
      end
    end
   
    def logged_in?
      !!current_admin
    end
   
    def authorized
      render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end
end
  

