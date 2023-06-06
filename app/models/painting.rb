class Painting < ApplicationRecord
  # Associations

  belongs_to :user
  belongs_to :artist
  has_many :orders
  has_many :painting_categories
  has_many :categories, through: :painting_categories
  has_many :carted_paintings

  # Tax & Total 

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
