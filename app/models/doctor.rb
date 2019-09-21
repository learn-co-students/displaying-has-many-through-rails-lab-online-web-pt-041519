class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments

    def appointment_count
        counter = 0
        self.appointments.each do |appointment|
            counter += 1
        end
        counter
    end
    
end
