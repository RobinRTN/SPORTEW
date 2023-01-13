class PlayerBadge < ApplicationRecord
  belongs_to :player
  belongs_to :badge
end
