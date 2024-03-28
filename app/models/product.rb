class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0.0 }
  validates :description, length: { in: 1..500 }

  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :category_products

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

  def primary_image
    if images.length > 0
      images[0].url
    else
      "https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg"
    end
  end
end
