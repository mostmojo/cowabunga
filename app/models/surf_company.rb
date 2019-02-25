class SurfCompany < ApplicationRecord
  has_many :bookings, dependent: :destroy
  # has_many :bookings, through: :availabilities, dependent: :destroy
end
