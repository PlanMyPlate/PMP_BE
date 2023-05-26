class Recipe < ApplicationRecord
  validates :name, presence: true
  validates :directions, presence: true
  validates :ingredients, presence: true
  validates :description, presence: true
end