class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def appointment_info
        self.appointment_datetime.strftime("%B %-d, %Y at %k:%M")
    end

    def patient_name
        self.patient.name
    end
    
    def doctor_name 
        self.doctor.name 
    end 
end
