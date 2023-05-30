class Calendar < ApplicationRecord
  has_many :calendar_recipes
  has_many :recipes, through: :calendar_recipes

  belongs_to :user
end