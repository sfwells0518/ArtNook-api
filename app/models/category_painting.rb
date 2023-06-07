class CategoryPainting < ApplicationRecord
  belongs_to :painting 
  belongs_to :category
end
