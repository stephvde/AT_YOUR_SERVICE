class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).where(user: current_user)
    # @status = BookingStatus.all
  end

  def show
    @booking = Booking.find(params[:id])
    @status = @booking.booking_statuses
    @qa = @booking.qas.new
    authorize @booking
  end

  def edit
  end

  def new
    @booking = Booking.new
    if current_user.has_profile?
      @service = Service.find(params[:service_id])
      authorize @booking
    else
      redirect_to new_profile_path, notice: 'Create your profile first'
      authorize @booking
    end
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.service = Service.find(params[:service_id])
    authorize @booking

    if @booking.save
      @status = BookingStatus.new
      @status.status = "new"
      @status.booking_id = @booking.id
      @status.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    @status = BookingStatus.new
    @status.status = "date changed"
    @status.booking_id = @booking.id
    @status.save
    authorize @booking
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking = booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  def my_bookings
    @bookings = current_user.bookings
    authorize @bookings
  end

  private

  def booking_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:booking).permit(:description, :price, :hours, :date, :city, :address, :zip_code, :country, :service_id )
  end
end
