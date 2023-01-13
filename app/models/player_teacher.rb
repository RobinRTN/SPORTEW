class PlayerTeacher < ApplicationRecord
  belongs_to :player
  belongs_to :teacher
end
