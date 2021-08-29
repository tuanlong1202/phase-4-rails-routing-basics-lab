class StudentsController < ApplicationController
    
    def index
        # model
        students = Student.all
        # view
        render json:students
    end
    def grades
        # model
        grades = Student.order(grade: :desc)
        # view
        render json:grades        
    end
    def highest_grade
        # model
        student = Student.order(grade: :desc).first
        # view
        render json:student
    end

end
