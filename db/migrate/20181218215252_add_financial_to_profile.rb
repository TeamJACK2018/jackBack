class AddFinancialToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :financial, :string
  end
end
