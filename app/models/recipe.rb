class Recipe < ApplicationRecord
  has_many :bookmarks
  has_many :categories

  validates :name, presence: true, uniquness: true
  validates :description, presence: true
  validates :rating, presence: true, numericality: {greater_than_or_equal_t0: 0, less_than_or_equal_to: 10}}
end
