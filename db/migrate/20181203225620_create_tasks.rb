class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.string :category
      t.string :sub_category

      t.timestamps
    end
  end
end
