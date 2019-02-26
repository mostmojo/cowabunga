class Availability < ApplicationRecord
  belongs_to :surf_company
  has_many :bookings
  
end
