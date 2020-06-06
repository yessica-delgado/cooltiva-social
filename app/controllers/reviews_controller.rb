class ReviewsController < ApplicationController
  def new
    @activity = Activity.find(params[:activity_id])
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @activity = Activity.find(params[:activity_id])
    @review.activity = @activity
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to activity_path(@activity)
    else
      render :new
    end
  end

  def index
    all_reviews = policy_scope(Review)
    @reviews = all_reviews.where(activity_id: params[:activity_id])
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
