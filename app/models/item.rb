class Item < ApplicationRecord
  has_one_attached :image
  belongs_to :category
  belongs_to :user
  with_options presence: true do
    validates :product
    validates :price
    validates :contents
    validates :stock
    validates :maker
    validates :category_id, numericality: { other_than: 1 } 
  end
end
