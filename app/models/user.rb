class User < ApplicationRecord 
  has_many :user_recipes 
  has_many :recipes, through: :user_recipes
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end