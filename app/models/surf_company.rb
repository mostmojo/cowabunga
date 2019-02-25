class SurfCompany < ApplicationRecord
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
end
