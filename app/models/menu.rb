class Menu < ApplicationRecord
  validates :name, presence: true
  validates :calorie, presence: true

  has_one_attached :image
  belongs_to :user
end
