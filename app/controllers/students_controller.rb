class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = params[:student]
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params[:student])
    @student.house = House.first

    if @student.save
      redirect_to students_path
    else
      render 'new'
    end
  end
end
