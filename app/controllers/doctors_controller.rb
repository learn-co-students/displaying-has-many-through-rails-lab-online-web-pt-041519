class DoctorsController < ApplicationController
    before_action :get_doctor, only: [:show, :edit, :update, :destroy]

    def index
        @doctors = Doctor.all
    end

    def new
        @doctor = Doctor.new
    end

    def show
    end

    def create
        @doctor = Doctor.new(doctor_params)

        if doctor.save
            redirect_to @doctor
        else
            render :new
        end
    end

    def edit
    end

    def update
        @doctor.update(doctor_params)

        if doctor.save
            redirect_to @doctor
        else
            render :edit
        end
    end

    def destroy
        @doctor.destroy
        flash[:notice] = "Doctor deleted."
        redirect_to doctors_path
    end
    
    private

    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end

    def get_doctor
        @doctor = Doctor.find(params[:id])
    end

end