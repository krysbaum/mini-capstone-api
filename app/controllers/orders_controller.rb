class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render :index
  end

  def create
    product = Product.find_by(id: params[:product_id])
    price = product.price
    calculated_subtotal = price * params[:quantity].to_i
    calculated_tax = product.tax * params[:quantity].to_i
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
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
