class LessonsController < ApplicationController
    
    def create
        lesson = Lesson.create!(lesson_params)
        Mailer.lesson_email(lesson, Admin.last).deliver_now
        render json: lesson
    end

    def index
        lessons = Lesson.all
        render json: lessons
    end
    
    def update
        lesson = Lesson.find_by(id: params[:id])
        lesson.update(:status => params[:status])
        render json: lesson
    end


    private
    def lesson_params
        params.require(:lesson).permit(:admin_id, :client_name, :client_email, :client_phone, :date, :time, :location, :student_name, :student_age, :student_experience, :student_goals, :status)
    end
end
