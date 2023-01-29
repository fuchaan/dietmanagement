class Menu < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  validates :name, presence: true
  validates :calorie, presence: true
end
