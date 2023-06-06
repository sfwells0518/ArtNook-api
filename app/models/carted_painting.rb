class CartedPainting < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :order, optional: true
  belongs_to :painting
end
