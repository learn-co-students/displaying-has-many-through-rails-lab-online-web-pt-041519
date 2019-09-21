class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def date_and_time
        self.appointment_datetime.strftime('%B %d, %Y at %k:%M %P.') 
    end
end
