class ReviewsController < ApplicationController

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = Booking.find(params[:booking_id])
    if @review.save
      redirect_to booking_path(@review.booking)
    else
      render :new
    end
  end

  def index
    @reviews = Review.all
  end

  private

  def review_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:review).permit(:service_rating, :provider_rating, :booking_id)
  end
end
