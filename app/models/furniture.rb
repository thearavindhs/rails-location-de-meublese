class Furniture < ApplicationRecord
  belongs_to :user
  has_many :bundled_furnitures
  has_one_attached :photo
  has_many :bundles_offer, through: :bundled_furnitures
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :price, presence: true
  # validates :photos, presence: true
  # validates :dimensions, presence: true
  # validates :condition, presence: true, inclusion: { in: %w(new good used), message: "%{value} is not a valid size" }
end
