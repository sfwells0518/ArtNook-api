class CategoriesController < ApplicationController
  def create
    @category = Category.new(
      name: params[:name],
    )
    if @category.save
      render json: { message: "Category added successfully" }
    else
      render json: { errors: @category.errors.full_messages }
    end
  end

  def destroy
    @category = category.find_by(id: params[:id])
    @category.destroy
    render json: { message: "Category successfully removed" }
  end
end
