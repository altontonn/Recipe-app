class Recipe < ApplicationRecord
  belongs_to :user

  has_many :recipe_foods, foreign_key: :recipe_id

  validates :Name, presence: true
  validates :Description, presence: true
  validates :Preparation_time, presence: true
  validates :Cooking_time, presence: true
end
