class RewardsController < ApplicationController
  def new
    @rewards = Reward.new
  end
end
