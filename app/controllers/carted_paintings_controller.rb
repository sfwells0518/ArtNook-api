class CartedPaintingsController < ApplicationController
  before_action :authenticate_user

  def index
    @carted_paintings = current_user.carted_paintings.where(status: "carted")
    render :index
  end 

  def create
    @carted_painting = CartedPainting.new(
      user_id: current_user.id,
      painting_id: params[:painting_id],
      quantity: params[:quantity],
      status: "carted",
      order_id: nil,
    )
    @carted_painting.save
    render json: { message: "Painting added to cart" }
  end

  def destroy
    @carted_painting = CartedPainting.find_by(id: params[:id])
    @carted_painting.status = "removed"
    @carted_painting.save 
    render json: { message: "Painting removed from cart" }
  end 
end
