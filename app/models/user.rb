class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         authentication_keys:  [:name, :staff_num]
         validates :staff_num, uniqueness: true
         
  has_many :manufacturers
  has_many :posts

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    login = conditions.delete(:login)
    if login
      where(conditions).where(["lower(name) = lower(:name) AND staff_num = :staff_num", { name: name, staff_num: staff_num }]).first
    else
      where(conditions).first
    end
  end
end
