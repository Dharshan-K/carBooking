class BookingController < ApplicationController
  def index
  end
  
  def book 
    Booking.create(bookingID: params[:carId].to_i + params[:userId].to_i, userID: params[:userId].to_i, carID: params[:carId].to_i, status: "onTrack",price: params[:price].to_i)
    @carStatus = Car.find_by(carID: params[:carId].to_i)
    @carStatus.status = "booked"
    puts "Booking created for #{params[:userId]} with car #{params[:carId]} with price #{params[:price]}"
    render json: @carStatus
  end

  def getUserBookings
    @userBooking = Booking.find_by(userID: params[:userId].to_i)
    render json: @userBooking
  end

  def getCarBookings
    @carBookings = Booking.find_by(carID: params[:carId].to_i)
    render json: @carBookings
  end

  def getUserCars
    @userCars = Booking.where("userID = ?", params[:userId]).pluck(:carName)
    render json: @userCars
  end
end
