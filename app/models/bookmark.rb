class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :recipe, presence: true
  validates :category, presence: true
  validates :comments, presence: true, presence: true, length: { minimum: 6 }
  validates :recipe_id, uniqueness: { scope: :category_id, message: "This receipt is already bookmarked in this category" }
end
