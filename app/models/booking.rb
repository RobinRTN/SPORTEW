class Booking < ApplicationRecord
  belongs_to :player
  belongs_to :teacher
  belongs_to :field
end
