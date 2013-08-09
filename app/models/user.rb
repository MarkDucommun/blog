class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :posts
  has_many :tagbooks, through: :posts
  has_many :tags, through: :tagbooks
  
  eval(UserHelper.add_methods_to_model)
end
