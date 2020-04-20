class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :wod_logs
  has_many :personal_records
  has_and_belongs_to_many :wods

  def has_wod_id(wod_id)
    wods.where(id: wod_id).any?
  end
end
