class Profile < ApplicationRecord
  belongs_to :user

  def display_name
    if !first_name.nil? && !last_name.nil?
       "#{first_name} #{last_name}"
    elsif first_name != nil && last_name == nil
       first_name
    elsif first_name == nil && last_name == nil && phone != nil
      phone
    else
      "Hello"
    end
  end
end
