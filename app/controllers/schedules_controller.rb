class SchedulesController < ApplicationController
  before_action :set_schedule, only: %i[ show edit update destroy ]

  def index
    @schedules = Schedule.all
  end

  def show
  end

  def new
    @schedule = Schedule.new
  end

  def edit
  end

  def create
    @schedule = Schedule.new(schedule_params)

    respond_to do |format|
        redirect_to @schedule, notice: "Schedule was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end
  end

  def update
      if @schedule.update(schedule_params)
        redirect_to @schedule, notice: "Schedule was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end
  end

  def destroy
    @schedule.destroy
      redirect_to schedules_url, notice: "Schedule was successfully destroyed."
      format.json { head :no_content }
    end
  end

  private
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    def schedule_params
      params.require(:schedule).permit(:user_id, :meeting_id, :room_id)
    end
end
