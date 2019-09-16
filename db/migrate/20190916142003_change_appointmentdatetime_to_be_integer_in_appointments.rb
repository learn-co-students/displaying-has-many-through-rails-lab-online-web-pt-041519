class ChangeAppointmentdatetimeToBeIntegerInAppointments < ActiveRecord::Migration[5.0]
  def up
      change_column :appointments, :appointment_datetime, :integer
    end

    def down
      change_column :appointments, :appointment_datetime, :string
    end
end
