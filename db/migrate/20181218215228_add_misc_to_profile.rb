class AddMiscToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :misc, :string
  end
end
