class BookingsController < ApplicationController

  def new
    @activity = Activity.find(params[:activity_id])
    @user = current_user
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @activity = Activity.find(params[:activity_id])
    @user = current_user
    @booking.activity = @activity
    @booking.user = @user
    if @booking.save
      render 'shared/booking_confirmation'
    else
      render 'activities/show'
    end
  end

  def index
    @bookings = current_user.bookings
  end


private
 def booking_params
   params.require(:booking).permit(:date)
 end
end
