class InstitutionsController < ApplicationController
  def new
    @institution = Institution.new
  end

  def create
    @institution = Institution.new(params[:institution])
    if @institution.save
      redirect_to @institution
    else
      render 'new'
    end
  end

  def show
    @institution = Institution.find(params[:id])
  end

  def edit
    @institution = Institution.find(params[:id])
  end

  def update
    @institution = Institution.find(params[:id])
    @institution.update!(params[:institution])
    redirect_to @institution
  end
end
