class CategoriesController < ApplicationController
  def index
  end

  def show
    params[:id].present? ? @categorys = Category.find(params[:id]) : @categorys = Category.find(1)
    @maker = @categorys.makers
    @body_type = @categorys.body_types
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end
end
