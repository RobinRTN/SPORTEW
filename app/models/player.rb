class Player < User
  has_many :player_badges, dependent: :destroy
  has_many :badges, through: :player_badges
  has_many :bookings, dependent: :destroy
  has_many :player_sports, dependent: :destroy
  has_many :sports, through: :player_sports
  belongs_to :player_level
end
