class MeetingsController < ApplicationController
  before_action :set_meeting, only: %i[ show edit update destroy ]

  def index
    @meetings = Meeting.all

    require 'icalendar'

    # Create a calendar with an event (standard method)
    @cal = Icalendar::Calendar.new
  end

  def show
  end

  def new
    @meeting = Meeting.new
  end

  def edit
  end

  def create
    @meeting = current_user.meetings.new(meeting_params)

    if @meeting.save
      Meeting.physician_schedule(@meeting.id)
      redirect_to @meeting, notice: "Meeting was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @meeting.update(meeting_params)
      redirect_to @meeting, notice: "Meeting was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @meeting.destroy
    redirect_to meetings_url, notice: "Meeting was successfully destroyed."
  end

  private
    def set_meeting
      @meeting = Meeting.find(params[:id])
    end

    def meeting_params
      params.require(:meeting).permit(:start, :description, :active, :user_id)
    end
end
