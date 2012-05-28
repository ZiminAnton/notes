class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_user, :get_categories_for_login_user

  def get_user
    @user = current_user
  end

  def get_categories_for_login_user
    @categories = @user.categories if @user
  end
end
