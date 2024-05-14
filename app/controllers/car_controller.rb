class CarController < ApplicationController
  def index
  end

  def getAllCars
    @allCars = Car.all()
    render json: @allCars
  end
end
