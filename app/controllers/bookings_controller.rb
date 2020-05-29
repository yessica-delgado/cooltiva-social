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
    @bookings= policy_scope(Booking)
    @bookings = current_user.bookings
  end

  def destroy
    @booking = Booking.find(params[:id])
    @activity = @booking.activity
    authorize @booking
    @booking.destroy
    @activity.capacity += 1
    redirect_to activity_path(@activity)
  end

private

 def booking_params
  params.require(:booking).permit(  :start_date, :end_date)
 end
end
