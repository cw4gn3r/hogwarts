class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params[:student])
    @student.sorting_hat # assign house randomly

    if @student.save
      redirect_to students_path
    else
      render 'new'
    end
  end
end
