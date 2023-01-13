class Conversation < ApplicationRecord
  belongs_to :player
  belongs_to :teacher
  has_many :messages, dependent: :destroy
end
