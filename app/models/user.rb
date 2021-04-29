class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :rooms
  belongs_to :role, optional: true
  has_one :profile
  has_many :insurance
  has_one :address
  has_many :meetings
  has_many :notes
  has_many :schedule

  after_create :set_default_role

  private

  def set_default_role
    self.update(role_id: Role.find_by(code: 'default').id)
  end
end
