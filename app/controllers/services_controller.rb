class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :destroy, :edit]
  def index
    @services = policy_scope(Service).where(user: current_user)
  end

  # def my_services
  #   @myservices = policy_scope(Service).where(user: current_user)
  #     # authorize @myservices
  # end

  def show
    @service = Service.find(params[:id])
    authorize @service
  end

  def new
    @service = Service.new

    if current_user.has_profile?
      @categories = Category.all
      authorize @service
    else
      redirect_to new_profile_path, notice: 'Create your profile first'
      authorize @service
    end
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    authorize @service
    if @service.save
      redirect_to my_services_path
    else
      render :new
    end

  end

  def edit
    @categories = Category.all
  end

  def update
    @service=Service.find(params[:id])
    authorize @service
    @service.update(service_params)
    redirect_to my_services_path
  end

  def destroy
    @service.destroy
    redirect_to my_services_path
  end

  def my_services
    @services = current_user.services
    authorize @services
  end


  private

  def service_params
    params.require(:service).permit(:description, :name, :hourly_rate, :category_id, :photo)
  end

  def set_service
    @service = Service.find(params[:id])
    authorize @service
  end

end
