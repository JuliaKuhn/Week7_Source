class Category < ApplicationRecord
  has_many :category_items
  has_many :items, throught: :category_items

  validates :title, presence: true
end
