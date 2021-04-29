class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  belongs_to :role
  belongs_to :room
  belongs_to :clinic
  has_one :profile
  has_many :insurance
  has_one :address
  has_many :meetings
  has_many :notes
  has_many :schedule

end
