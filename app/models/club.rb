class Club < User
  has_many :club_features, dependent: :destroy
  has_many :features, through: :club_features
  has_many :fields, dependent: :destroy
end
