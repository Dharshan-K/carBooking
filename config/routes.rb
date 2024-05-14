Rails.application.routes.draw do
  get 'user/index'
  get 'car/index'
  get 'booking/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "getAllUsers" => "user#getAllUsers"
  get "getUser/:id" => "user#getUser" #API for a user
  get "getCars" => "car#getAllCars" #API to list all cars
  get "bookCar/:carId/:userId/:price" => "booking#book" # API to book a car. parameters are passed through the URL rather than a post request.
  get "getCarBooking/:carId" => "booking#getCarBookings" #APi to see past car boookings
  get "getUserBooking/:userId" => "booking#getUserBookings" #API to see past user bookings
  get "getUserCar/:userId" => "booking#getUserCars" #API to get cars booked by a user in the past

  # Defines the root path route ("/")
  # root "posts#index"
end
