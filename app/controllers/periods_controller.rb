class PeriodsController < ApplicationController
  def new
    @period = Period.new
  end

  def create
    @period = Period.create(params[:id])
  end

  def show
    @period = Period.find(params[:id])
  end

  def edit
    @period = Period.find(params[:id])
  end

  def update
    @period = Period.find(params[:id])
    @period.update!(params[:period])
    redirect_to @period
  end

  def destroy
    Period.find(params[:id]).destroy!
    redirect_to periods_path
  end
end
