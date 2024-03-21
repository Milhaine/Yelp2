class Restaurant < ApplicationRecord
  validates :name, :category, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese belgian french) }
  has_many :reviews, dependent: :destroy
end
