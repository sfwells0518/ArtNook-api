class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render :index 
  end

  def show
    @order = Order.find_by(id: params[:id], user_id: current_user.id)
    render :show 
  end

  def create
    carted_paintings = CartedPainting.where(user_id: current_user.id, status: "carted")

    calculated_subtotal = 0
    carted_paintings.each do |carted_painting|
      calculated_subtotal += carted_painting.painting.price * carted_painting.quantity
    end

    tax_rate = 0.09
    calculated_tax = calculated_subtotal * tax_rate
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )

    if order.save
      carted_paintings.each do |carted_painting|
        carted_painting.update(status: "purchased", order_id: @order_id)
      end 
      render json:  { message: "Order placed successfully" }
    else
      render json: { errors: @order.errors.full_messages }, status: :unprocessable_entity
    end  
  end
end
