class CoursesController < ApplicationController
  def new
    @course = Course.new
  end

  def create
    @course = Course.new(params[:course])
    @course.institution = @institution
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

  def destroy
    course = Course.find(params[:id])
    ins = course.institution
    course.destroy!
    redirect_to institution_path(ins)
  end

  def update
    @course = Course.find(params[:id])
    @course.update!(params[:course])
    redirect_to @course
  end
end
