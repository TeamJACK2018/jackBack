class MyTask < ApplicationRecord
  belongs_to :Task
  belongs_to :user
end
