class ClinicsController < ApplicationController
  before_action :set_clinic, only: %i[ show edit update destroy ]

  def index
    @clinics = Clinic.all
  end

  def show
  end

  def new
    @clinic = Clinic.new
  end

  def edit
  end

  def create
    @clinic = Clinic.new(clinic_params)

      if @clinic.save
        redirect_to @clinic, notice: "Clinic was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def update
      if @clinic.update(clinic_params)
        redirect_to @clinic, notice: "Clinic was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @clinic.destroy
      redirect_to clinics_url, notice: "Clinic was successfully destroyed."
    end
  end

  private
    def set_clinic
      @clinic = Clinic.find(params[:id])
    end

    def clinic_params
      params.require(:clinic).permit(:name, :street_address, :city, :zip)
    end
end
