class CategoriesController < ApplicationController

  def index
    if params[:query].present?
      @services = Service.search_by_name_and_description(params[:query])
      @result = "service"
    else
      @services = Service.all
      @result = "all"
    end
    @categories = policy_scope(Category)
    authorize @services
  end

  def show
    @category = Category.find(params[:id])
    @services = Service.all
    authorize @category
    authorize @services
  end

  private

  def category_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:category).permit(:name, :message, :photo)
  end
end
