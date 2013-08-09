class Post < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  has_many :tagbooks
  has_many :tags, through: :tagbooks
end
