class InsurancesController < ApplicationController
  before_action :set_insurance, only: %i[ show edit update destroy ]

  def index
    @insurances = Insurance.all
  end

  def show
  end

  def new
    @insurance = Insurance.new
  end

  def edit
  end

  def create
    @insurance = Insurance.new(insurance_params)

      if @insurance.save
        redirect_to @insurance, notice: "Insurance was successfully created."
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
      if @insurance.update(insurance_params)
        redirect_to @insurance, notice: "Insurance was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @insurance.destroy
      redirect_to insurances_url, notice: "Insurance was successfully destroyed."
    end
  end

  private
    def set_insurance
      @insurance = Insurance.find(params[:id])
    end

    def insurance_params
      params.require(:insurance).permit(:company, :policy_number, :phone, :user_id)
    end
end
