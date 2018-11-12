class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
    @motorcycles = Motorcycle.all
  end

  def new
    @motorcycle = Motorcycle.find(params[:motorcycle_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(motorcycle_id: params[:motorcycle_id])
    @booking.status = "pending"
    @booking.save

    redirect_to root_path
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
  end

  def show
  end
end
