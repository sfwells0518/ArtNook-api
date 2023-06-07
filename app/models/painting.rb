class Painting < ApplicationRecord
  # Associations

  belongs_to :artist
  has_many :orders
  has_many :category_paintings 
  has_many :categories, through: :category_paintings 
  has_many :carted_paintings

  # Tax & Total 

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
