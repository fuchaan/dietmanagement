class Menu < ApplicationRecord
  has_one_attached :image
  validates :name, presence: true
  validates :calorie, presence: true
end
