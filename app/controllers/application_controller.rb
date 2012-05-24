class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_user

  def get_user
    @user = current_user
  end
end
