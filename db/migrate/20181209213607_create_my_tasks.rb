class CreateMyTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :my_tasks do |t|
      t.references :task, foreign_key: true
      t.references :user, foreign_key: true
      t.date :due_date
      t.boolean :completed
      t.integer :frequency
      t.string :notes

      t.timestamps
    end
  end
end
