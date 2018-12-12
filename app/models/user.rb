class User < ApplicationRecord

  has_many :tasks , through: :my_tasks
  has_one :profile
  has_many :my_tasks

  include Devise::JWT::RevocationStrategies::JTIMatcher
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :validatable,
         :jwt_authenticatable,
         jwt_revocation_strategy: self

  def profile_attributes=(value)
    @profile_attributes = value
    self.build_profile(value)
  end

  def profile_attributes
    @profile_attributes ||= self.profile&.attributes
  end
end
