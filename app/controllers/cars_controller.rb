class CarsController < ApplicationController
  def index
    if params[:maker_id].present?
      @makers = Maker.find(params[:maker_id])
      @cars = @makers.cars
    else
      @body_type = BodyType.find(params[:body_type_id])
      @cars      = @body_type.cars
    end
  end

  def show
  end
end
