class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient  


  # Format time to January 12, 2016 at 3:00
  def time
    self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end


end
