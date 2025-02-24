class User < ApplicationRecord
  has_many :assignments
  has_many :projects, through: :assignments

  validates :name, 
    presence: true

  validates :email,
    presence: true

  after_create :send_confirmation_email

  private

  def send_confirmation_email
    puts "Thank you for joining CSG!"
  end

end
