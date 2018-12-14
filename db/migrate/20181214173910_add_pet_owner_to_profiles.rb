class AddPetOwnerToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :pet_owner, :boolean
  end
end
