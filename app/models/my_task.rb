class MyTask < ApplicationRecord
  belongs_to :task
  belongs_to :user
  has_one :appointment

  def appointment_attributes=(value)
    @appointment_attributes = value
    self.build_appointment(value)
  end

  def appointment_attributes
    @appointment_attributes ||= self.appointment&.attributes
  end
end
