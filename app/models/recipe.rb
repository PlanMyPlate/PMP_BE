class Recipe < ApplicationRecord
  has_many :user_recipes 
  has_many :users, through: :user_recipes

  validates :name, presence: true
  validates :directions, presence: true
  validates :ingredients, presence: true
  validates :description, presence: true
end