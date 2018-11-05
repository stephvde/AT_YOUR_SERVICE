class ServicesController < ApplicationController

  before_action :set_params, only: [:show, :destroy, :edit]
  def index
    @services = Service.all
  end

  def show
  end

  def new
    @user = current_user
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @user = current_user
    @service.user = @user
    if @service.save
      redirect_to service_path(@service)
    else
      render :new
    end

  end

  def edit
  end

  def update
    @service.update(service_params)
  end

  def destroy
    @service.destroy
  end


  private

  def service_params
    params.require(:service).permit(:description, :name, :hourly_rate)
  end

  def set_params
    @service = Service.find(params[:id])
  end

end
