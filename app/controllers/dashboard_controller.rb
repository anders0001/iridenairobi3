class DashboardController < ApplicationController
  def index
    @bookings = Booking.all
    @motorcycles = Motorcycle.all
  end
end
