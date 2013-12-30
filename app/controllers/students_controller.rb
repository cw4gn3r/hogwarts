class StudentsController < ApplicationController
  def index
    @students = Students.all
  end

  def show
    @student = params[:student]
  end

  def new
    new_student = Student.new(params)
    student = Student.create
    house << student
    redirect_to 'index'
  end
end
