class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  def index

  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
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

  def set_venue
    @activity = Activity.find(params[:id])
  end

  def venue_params
    params.require(:activity).permit(:name, :address, :description, :capacity)
  end
end
