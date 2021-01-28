class Booking < ApplicationRecord
  belongs_to :bundle
  belongs_to :user
  validates :shipping_method, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
