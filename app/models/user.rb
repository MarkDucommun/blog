class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :notebooks
  has_many :posts, through: :notebooks
  has_many :tags, through: :posts

  eval(UserHelper.add_methods_to_model)
end
