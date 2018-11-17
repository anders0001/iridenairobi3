class MotorcyclesController < ApplicationController
  def index
    if params["search"]["starts_at"].present? && params["search"]["ends_at"].present?
      @motorcycles = []
      a = Date.parse(params["search"]["starts_at"])
      b = Date.parse(params["search"]["ends_at"])
raise
      Motorcycle.all.each do |motorcycle|
        motorcycle.bookings.each do |booking|
          c = booking.start_date
          d = booking.end_date
          if !(a..b).overlaps?(c..d)
            @motorcycles << booking.motorcycle
          end
        end
      end
      @motorcycles
    else
      @motorcycles = Motorcycle.all
    end
  end

  def show
  end
end
