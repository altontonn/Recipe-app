class User < ApplicationRecord
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :confirmable, :validatable

  has_many :recipes, foreign_key: :user_id, dependent: :destroy
  has_many :foods, foreign_key: :user_id, dependent: :destroy
  validates :name, presence: true
  has many :recipes, foreign_key: :user_id
  has many :foods, foreign_key: :user_id
end
