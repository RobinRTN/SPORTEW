class Review < ApplicationRecord
  belongs_to :player
  belongs_to :club
  belongs_to :booking
end
