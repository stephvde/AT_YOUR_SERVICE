class ProfilesController < ApplicationController

  before_action :params_id, only: [:show, :edit]
  def show
  end

  def edit
  end

  def new
    @profile = Profile.new
    authorize @profile
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    authorize @profile
    if @profile.save
      redirect_to profile_path(@profile)
    else
      render :new
    end
  end

  def update
    @profile.update(params_id)
    redirect_to profile_path(@profile)
  end

  private

  def params_id
    @profile = policy_scope(Profile).find(params[:id])
    authorize @profile
  end

  def profile_params
    params.require(:profile).permit(:last_name, :first_name, :street, :number, :country, :city, :bank_account, :user_id)
  end
end
