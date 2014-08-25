class CoursesController < ApplicationController
  def new
    @course = Course.new
  end

  def create
    @course = Course.new(params[:course])
    if @course.save
      redirect_to @course
    else
      render 'new'
    end
  end

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end

  def destroy
    course = Course.find(params[:id])
    course.destroy!
    redirect_to courses_path
  end

  def update
    @course = Course.find(params[:id])
    @course.update!(params[:course])
    redirect_to @course
  end
end
