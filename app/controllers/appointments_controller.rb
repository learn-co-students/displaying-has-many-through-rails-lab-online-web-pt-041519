class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
  end

end

#<h2><%= @appointment.datetime.strftime("%B %e, %Y at %I:%M") %></h2>
