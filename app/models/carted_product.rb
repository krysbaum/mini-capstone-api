class CartedProduct < ApplicationRecord
  validates :quantity, numericality: { greater_than: 0.0 }
  belongs_to :product
  belongs_to :user
  belongs_to :order, optional: true
end
