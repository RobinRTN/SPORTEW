class Teacher < User
  has_many :bookings, dependent: :destroy
  has_many :teacher_sports, dependent: :destroy
  has_many :sports, through: :teacher_sports
  belongs_to :teacher_level
end
