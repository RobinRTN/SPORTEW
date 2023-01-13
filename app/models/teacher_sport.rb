class TeacherSport < ApplicationRecord
  belongs_to :teacher
  belongs_to :sport
end
