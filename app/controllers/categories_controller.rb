class CategoriesController < ApplicationController

  def index
    @categories = policy_scope(Category).where(user: current_user)
  end
end
