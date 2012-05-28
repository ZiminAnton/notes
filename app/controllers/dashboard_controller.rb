class DashboardController < ApplicationController
  before_filter :authenticate_user!
  def index
    @categories = current_user.categories
  end
end