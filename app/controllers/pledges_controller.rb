class PledgesController < ApplicationController
  def new
    @pledge = Pledge.new
  end

  def show
    @pledge = Pledge.find(params[:id])
  end

  def create
    @pledge = Pledge.new(pledge_params)

    if @pledge.save
      redirect_to pledge_url
    else
      render :new 

end
