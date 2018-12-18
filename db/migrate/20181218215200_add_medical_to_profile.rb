class AddMedicalToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :medical, :boolean
    add_column :profiles, :financial, :boolean
    add_column :profiles, :misc, :boolean
  end
end
