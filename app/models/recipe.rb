class Recipe < ApplicationRecord
  belongs_to :user
  has many :recipe_foods, foreign_key: :user_id
end
