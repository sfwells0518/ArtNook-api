class User < ApplicationRecord
  # Authorization
  has_secure_password
  validates :email, presence: true, uniqueness: true
  
  # Associations:
  has_many :carted_paintings
  has_many :orders 
end
