class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render :index
  end

  def create
    carted_products = current_user.carted_products.where(status: "carted")
    calculated_subtotal = 0
    calculated_tax = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.quantity * carted_product.price
      calculated_tax += carted_product.quantity * carted_product.tax
    end
    calculated_total = calculated_subtotal + calculated_tax

    # cart = CartedProduct.find_by(current_user.carted_products.where(status: "carted"))
    # product = Product.find_by(id: params[:product_id])
    # price = product.price
    # calculated_subtotal = price * params[:quantity].to_i
    # calculated_tax = product.tax * params[:quantity].to_i
    # calculated_total = calculated_subtotal + calculated_tax

    @order = Order.create(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )

    carted_products.each do |carted_product|
      carted_product.update(status: "purchased", order_id: @order.id)
      calculated_tax += carted_product.quantity * carted_product.tax
    end

    if @order.valid?
      render :show
    else
      render json: { errors: @order.errors.full_messages }, status: 422
    end
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render :show
  end
end
