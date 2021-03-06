class ProfilesController < ApplicationController

  before_action :set_profile, only: [:show, :edit]

  def new
    @profile = Profile.new
    authorize @profile
  end

  def show
  end

  def edit
  end

  def create
    @profile = Profile.new(profile_params)
    authorize @profile
    @profile.user = current_user
    authorize @profile
    if @profile.save
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)
    authorize @profile
    redirect_to profile_path(@profile)
  end

  private

  def set_profile
    @profile = Profile.find(params[:id])
    authorize @profile
  end

  def profile_params
    params.require(:profile).permit(:last_name, :first_name, :address, :country, :city, :zip_code, :bank_account, :user_id, :photo)
  end
end
