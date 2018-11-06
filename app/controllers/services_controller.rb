class ServicesController < ApplicationController

  before_action :set_params, only: [:show, :destroy, :edit]
  def index
    @services = Service.all
  end

  def myservices
    @myservices = Service.where(user: current_user)
    @user = current_user
  end

  def show
  end

  def new
    @user = current_user
    @service = Service.new
    @categories = Category.all
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
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
    redirect_to services_path
  end

  def destroy
    @service.destroy
    redirect_to services_path
  end


  private

  def service_params
    params.require(:service).permit(:description, :name, :hourly_rate, :category_id)
  end

  def set_params
    @service = Service.find(params[:id])
  end

end
