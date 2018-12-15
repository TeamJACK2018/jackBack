class AddExactTimeToMyTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :my_tasks, :exact_time, :datetime
  end
end
