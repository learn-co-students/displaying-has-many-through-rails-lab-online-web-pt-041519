class AppointmentsController < ApplicationController
    before_action :get_appointment, only: [:show, :edit, :update, :destroy]

    def new
        @appointment = Appointment.new
    end

    def show
    end

    def create
        @appointment = Appointment.new(appointment_params)

        if appointment.save
            redirect_to @appointment
        else
            render :new
        end
    end

    def edit
    end

    def update
        @appointment.update(appointment_params)

        if appointment.save
            redirect_to @appointment
        else
            render :edit
        end
    end

    def destroy
        @appointment.destroy
        flash[:notice] = "Appoinment deleted."
        redirect_to appointments_path
    end
    
    private

    def appointment_params
        params.require(:appointment).permit(:datetime, :doctor_id, :patient_id)
    end

    def get_appointment
        @appointment = Appointment.find(params[:id])
    end
end
