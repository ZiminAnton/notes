class CategoriesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :get_category, :only => [:show, :edit, :update]

  def index
  end

  def edit
    render :layout => false
  end

  def update
    if @category.update_attributes(params[:category])
      redirect_to :action => :index
    else
      redirect_to :action => :edit
    end
  end

  private

  def get_category
    @category = current_user.categories.find_by_id(params[:id])
  end
end