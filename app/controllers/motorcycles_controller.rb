class MotorcyclesController < ApplicationController
  def index
    if params["search"]["start_date"].present? && params["search"]["end_date"].present?
      @motorcycles = []
      a = Date.parse(params["search"]["start_date"])
      b = Date.parse(params["search"]["end_date"])
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
