class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :surf_company
end
