class AddColumnIdsToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_reference :appointments, :patient, index: true
    add_reference :appointments, :doctor, index: true
  end
end
