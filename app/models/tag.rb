class Tag < ActiveRecord::Base
  # Remember to create a migration!
  has_many :tagbooks
  has_many :posts, through: :tagbooks
end
