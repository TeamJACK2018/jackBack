class FixColumnNameAgain < ActiveRecord::Migration[5.2]
  def change
    rename_column :appointments, :exactTime, :exact_time
  end
end
