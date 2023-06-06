class ArtistsController < ApplicationController
  def create
    @artist = Artist.new(
      name: params[:name],
      birthplace: params[:birthplace],
      date_of_birth: params[:date_of_birth],
      fun_fact: params[:fun_fact],
    )
    if @artist.save
      render json: { message: "Artist created successfully"}
    else
      render json: { errors: @artist.errors.full_messages }
    end
  end

  def update
    @artist = Artist.find_by(id: params[:id])
    @artist.name = params[:name] || @artist.name
    @artist.birthplace = params[:birthplace] || @artist.birthplace
    @artist.date_of_birth = params[:date_of_birth] || @artist.date_of_birth
    @artist.fun_fact = params[:fun_fact] || @artist.fun_fact

    if @artist.save
      render json: { message: "Artist updated successfully" }
    else
      render json: { errors: @artist.errors.full_messages }
    end
  end

  def destroy
    @artist = artist.find_by(id: params[:id])
    @artist.destroy
    render json: { message: "Artist removed successfully" }
  end
end
