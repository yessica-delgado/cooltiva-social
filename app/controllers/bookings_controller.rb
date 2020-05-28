class BookingsController < ApplicationController



  def create
    @booking = Booking.new(booking_params)
    @activity = Activity.find(params[:activity_id])
    @user = current_user
    @booking.activity = @activity
    @booking.user = @user
    authorize @booking
    if @booking.save
      render 'shared/booking_confirmation'
      @activity.capacity -= 1
    else
      render 'activities/show'
    end
  end

  def index
    @bookings = current_user.bookings
  end

  def destroy
    @booking = Booking.find(booking_params)
    @booking.destroy
    @activity = Activity.find(params[:activity_id])
    @activity.capacity += 1
    redirect_to activities_path

  end

private

 def booking_params
   params.require(:booking).permit(:date)
 end
end
