class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end
  def new
  end

  def create 
    @student = Student.create(params.require(:student).permit(:first_name, :last_name))
    redirect_to students_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

end
