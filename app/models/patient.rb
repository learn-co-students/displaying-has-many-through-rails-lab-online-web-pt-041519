class Patient < ApplicationRecord
    has_many :appointments    
    has_many :doctors, through: :appointments

    def appointment_count
        counter = 0
        self.appointments.each do |appointment|
            counter += 1
        end
        "Name: #{self.name} Number of Appointments: #{counter}"
    end

end
