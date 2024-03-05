class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0.0 }
  validates :description, length: { in: 1..500 }

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def is_discounted?
    price <= 10
  end

  def tax
    tax = price * 0.09
    tax
  end

  def total
    total = tax + price
    total
  end
end
