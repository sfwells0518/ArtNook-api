class PaintingsController < ApplicationController
  def index
    @paintings = Painting.all
    render :index 
  end
  
  def show
    @painting = Painting.find_by(id: params[:id])
    render :show 
  end

  def create
    @painting = Painting.new(
      name: params[:name],
      artist_id: params[:artist_id],
      description: params[:description],
      year: params[:year],
      price: params[:price],
      painting_image: params[:painting_image],
    )
    if @painting.save
      render :show
    else
      render json: { errors: @painting.errors.full_messages }
    end  
  end

  def update
    @painting = Painting.find_by(id: params[:id])
    @painting.name = params[:name] || @painting.name
    @painting.artist_id = params[:artist_id] || @painting.artist_id
    @painting.description = params[:description] || @painting.description
    @painting.year = params[:year] || @painting.year
    @painting.price = params[:price] || @painting.price
    @painting.painting_image = params[:painting_image] || @painting.painting_image

    if @painting.save
      render :show
    else
      render json: { errors: @painting.errors.full_messages }
    end
  end

  def destroy
    @painting = Painting.find_by(id: params[:id])
    @painting.destroy
    render json: { message: "Painting has been successfully removed" }
  end
   
end


