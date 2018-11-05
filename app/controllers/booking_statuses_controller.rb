class BookingStatusesController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @booking_status = BookingStatus.new
  end

  def create
    @booking_status = BookingStatus.new(booking_status_params)
    @booking_status.booking = Booking.find(params[:booking_id])
    if @booking_status.save
      redirect_to booking_path(@booking_status.booking)
    else
      render :new
    end
  end

  def index
    @booking_statuses = BookingStatus.all
  end

  private

  def booking_status_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:booking_status).permit(:status, :booking_id)
  end
end



