class Category < ApplicationRecord
  # Associations
  has_many :painting_categories
  has_many :paintings, through: :painting_categories
end
