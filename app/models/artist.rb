class Artist < ApplicationRecord
  # Associations
  has_many :paintings
  belongs_to :painting_category, through: :painting
end
