class Actor < ApplicationRecord

  # validates :first_name, length: { minimum: 2 }
  # validates :last_name, length: { minimum: 2 }
  # validates :known_for, presence: true
  # validates :age, inclusion: { in: %w(age > 13), message: "%{value} is not a valid age" }

  belongs_to :movie
  belongs_to :user
  
  def age_order
    Actor.all.order(:age)
  end
end

