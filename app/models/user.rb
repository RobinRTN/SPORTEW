class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  self.inheritance_column = :type
  has_many :clubs, class_name: 'Club', foreign_key: 'user_id'
  has_many :players, class_name: 'Player', foreign_key: 'user_id'
  has_many :teachers, class_name: 'Teacher', foreign_key: 'user_id'
end
