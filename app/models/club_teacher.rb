class ClubTeacher < ApplicationRecord
  belongs_to :club
  belongs_to :teacher
end
