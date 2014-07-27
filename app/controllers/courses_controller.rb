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

  def show
    @course = Course.find(params[:id])
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])
    @course.update!(params[:course])
    redirect_to @course
  end
end
