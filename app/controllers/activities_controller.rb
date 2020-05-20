class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index, :show]
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    @activities = Activities.geocoded
    @activities = policy_scope(@activities) #o (Activity)

    @markers = @activities.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude
      }
    end
  end

  def new
    @activity = Activity.new
    authorize @activity
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    authorize @activity
    if @activity.save
      redirect_to activity_path(@activity)
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.new
    @reviews = Review.where(venue_id: params[:id])
  end

  def edit
  end

  def update
    @activity.update(activity_params)
    redirect_to activity_path(@activity)
  end

  def destroy
    @activity.destroy
    redirect_to activities_path
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
    authorize @activity
  end

  def activity_params
    params.require(:activity).permit(:title, :who_description, :why_description, :what_description, :meeting_address, :activity_address, :capacity, :capacity, :donation, :start_date, :end_date, :requirements)
  end
end
