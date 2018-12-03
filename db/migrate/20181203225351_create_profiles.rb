class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.boolean :home_owner
      t.boolean :car_owner
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
