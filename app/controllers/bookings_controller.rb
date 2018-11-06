class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(booking).where(user: current_user || )
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def edit
  end



  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path
  end

  def destroy
    @booking = booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:booking).permit(:description, :price, :hours, :data, :city, :street, :number, :zip_code, :country, :user_id, :serivce_id )
  end
end
