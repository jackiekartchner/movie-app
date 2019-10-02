class User < ApplicationRecord
  # has_secure_password
  # validates :email, presence: true, uniqueness: 

  has_many :actors
  has_many :movies 
end
