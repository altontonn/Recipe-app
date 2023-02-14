class User < ApplicationRecord
  has many :recipes, foreign_key: :user_id
  has many :foods, foreign_key: :user_id
end
