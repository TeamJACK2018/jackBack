class AddMedicalToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :medical, :string
  end
end
