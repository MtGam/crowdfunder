class User < ApplicationRecord
  has_many :projects, through: :pledges
  

end
