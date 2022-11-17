class Review < ApplicationRecord
  belongs_to :restaurant, dependent: :destroy
  validates :content, presence: true
  validates :rating, presence: true, :inclusion => 0..5, numericality: { only_integer: true }
end
