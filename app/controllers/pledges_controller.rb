class PledgesController < ApplicationController
  def new
    @pledge = Pledge.new
  end

  def show
    @pledge = Pledge.find(params[:id])
  end

end
