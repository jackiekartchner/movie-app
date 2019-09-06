class Movie < ApplicationRecord
  validates :title, uniqueness: true
  validates :year, numericality: true
  validates :plot, length: { in: 10...500 } 
  validates :director, presence: true

  def english
    Movie.where(english: "%true%")
  end
end
