class Api::V1::AuthController < ApplicationController
    
    skip_before_action :authorized, only: [:create]
    
    def create
        puts admin_login_params
        @admin = Admin.find_by(email: admin_login_params[:email])
        puts @admin
        puts params
        puts admin_login_params
        #User#authenticate comes from BCrypt
        if @admin && @admin.authenticate(admin_login_params[:password])
        # encode token comes from ApplicationController
        token = encode_token({ admin_id: @admin.id })
        render json: { admin: @admin, jwt: token }, status: :accepted
        else
        render json: { message: 'Invalid email or password' }, status: :unauthorized
        end
    end
    
    private
    
    def admin_login_params
        # params { user: {username: 'Chandler Bing', password: 'hi' } }
        # params.require(:admin).permit(:email, :password)
        params["admin"]
    end
end
