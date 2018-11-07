class QasController < ApplicationController
def new
    @booking = Booking.find(params[:booking_id])
    @qa = Qa.new
  end

  def create
    @qa = Qa.new(qa_params)
    @qa.booking = Booking.find(params[:booking_id])
    @qa.user = current_user
    authorize @qa
    if @qa.save
      redirect_to booking_path(@qa.booking)
    else
      render :new
    end
  end

  def index
    @qas = Qa.all
    authorize @qas
  end

  private

  def qa_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:qa).permit(:message, :booking_id)
  end
end
