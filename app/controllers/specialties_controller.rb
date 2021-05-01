class SpecialtiesController < ApplicationController
  before_action :set_specialty, only: %i[ show edit update destroy ]

  def index
    @specialties = Specialty.all
  end

  def show
  end

  def new
    @specialty = Specialty.new
  end

  def edit
  end

  def create
    @specialty = Specialty.new(specialty_params)

    respond_to do |format|
      if @specialty.save
        redirect_to @specialty, notice: "Specialty was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def update
      if @specialty.update(specialty_params)
        redirect_to @specialty, notice: "Specialty was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @specialty.destroy
      redirect_to specialties_url, notice: "Specialty was successfully destroyed."
    end
  end

  private
    def set_specialty
      @specialty = Specialty.find(params[:id])
    end

    def specialty_params
      params.require(:specialty).permit(:name)
    end
end
