class Task < ApplicationRecord
  has_many :users , through: :my_tasks
end
