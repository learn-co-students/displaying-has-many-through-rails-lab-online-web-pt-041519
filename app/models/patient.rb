class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments

    def appt_total
        self.appointments.count
    end
    
end
