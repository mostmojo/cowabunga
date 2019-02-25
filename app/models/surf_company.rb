class SurfCompany < ApplicationRecord
  has_many :availabilities, dependent: :destroy
  has_many :bookings, through: :availabilities, dependent: :destroy
end
