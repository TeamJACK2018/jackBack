class AddNotesToMyTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :my_tasks, :notes, :string
  end
end
