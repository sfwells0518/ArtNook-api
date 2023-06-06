class PaintingCategory < ApplicationRecord
  # Associations
  belongs_to :painting
  belongs_to :category 
  has_many :artists
end
