class Task < ApplicationRecord
  has_many :users , through: :my_tasks
  has_many :my_tasks
end
