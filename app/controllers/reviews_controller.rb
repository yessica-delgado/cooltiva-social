class ReviewsController < ApplicationController
  def new
    @activity = Activity.find(params[:activity_id])
    @review = Review.new
  end

   def create
    @review = Review.new(review_params)
    @activity = Activity.find(params[:activity_id])
    @review.activity = @activity
    if @review.save
      redirect_to activity_path(@activity)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to activity_path(@review.activity)
  end
  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
