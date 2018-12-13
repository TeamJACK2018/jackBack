class MyTask < ApplicationRecord
  belongs_to :task
  belongs_to :user
  has_one :appointment
end
