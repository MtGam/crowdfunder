class RewardsController < ApplicationController
  def new
    @rewards = Reward.new
  end

  def create
    @rewards = Reward.new
    if @reward.save
      render :new
    else
      render :new, notice: "Please add Reward for your project."
    end
  end
end
