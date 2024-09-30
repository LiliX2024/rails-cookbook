class Bookmark < ApplicationRecord
  belongs_to :recipt
  belongs_to :category

  validates :recipe, presence: true
  validates :category, presence: true
  validates :comments, presence: true, length: { minimun: 6, message: "Minimun 6 characters."}
  validates :recipe_id, uniquness: { scope: :category_id, message: "This receipt is already bookmarked in this category" }
end
