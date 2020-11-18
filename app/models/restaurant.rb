class Restaurant < ApplicationRecord
  def self.restaurant_categories
    %w[chinese italian japanese french belgian]
  end
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: restaurant_categories }
end
