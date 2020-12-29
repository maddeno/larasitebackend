class StudentsController < ApplicationController
    skip_before_action :authorized, only: [:create]
    
    def create
        student = Student.create!(student_params)
        Mailer.student_email(student, Admin.last).deliver_now
        render json: student
    end

    def index
        students = Student.select{|student| student.status == "requested"}
        render json: students
    end
    
    def update
        student = Student.find_by(id: params[:id])
        student.update(:status => params[:status])
        render json: student.reload
    end


    private
    def student_params
        params.require(:student).permit(:client_name, :client_email, :client_phone, :student_name, :student_age, :student_experience, :student_goals, :status)
    end
end
