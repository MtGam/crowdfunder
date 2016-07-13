class Project < ApplicationRecord
  has_many :rewards
  has_many :pledges

  belongs_to :user
end
