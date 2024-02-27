class ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render template: "products/index"
  end

  def one_product
    @product = Product.find_by(id: params["id"])
    render template: "products/show"
  end

  # def phone_method
  #   @product = Product.first
  #   render template: "products/show"
  # end

  # def laptop_method
  #   @product = Product.second
  #   render template: "products/show"
  # end

  # def headphones_method
  #   @product = Product.third
  #   render template: "products/show"
  # end
end
