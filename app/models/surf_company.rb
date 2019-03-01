class SurfCompany < ApplicationRecord
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :number, presence: true
  validates :number, presence: true
end
