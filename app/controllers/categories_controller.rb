class CategoriesController < ApplicationController
  def create
    @category = Category.new(
      name: params[:name],
    )
    if @category.save
      render json: { message: "Category created successfully" }
    else
      render json: { errors: @category.errors.full_messages }
    end
  end

  def destroy
    @category = category.find_by(id: params[:id])
    @category.destroy
    render json: { message: "Category removed successfully" }
  end
end
