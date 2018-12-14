class AddMyTaskToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_reference :appointments, :my_task, foreign_key: true
  end
end
