class User < ApplicationRecord
  has_many :assignments
  has_many :projects, through: :assignments

  validates :name, 
    presence: true

  validates :email,
    presence: true
    
end
