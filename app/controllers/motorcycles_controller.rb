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
    @motorcycle = Motorcycle.find(params[:id])
  end

  def new
    @motorcycle = Motorcycle.new    
  end

  def crud
    @motorcycles = Motorcycle.all
  end

  def create
    @motorcycle = Motorcycle.new(motorcycle_params)
    @motorcycle.save

    redirect_to dashboard_moto_path
  end

  def edit
    @motorcycle = Motorcycle.find(params[:id])
  end

  def update
    @motorcycle = Motorcycle.find(params[:id])
    @motorcycle.update(motorcycle_params)

    redirect_to dashboard_moto_path
  end

  def destroy
    @motorcycle = Motorcycle.find(params[:id])
    @motorcycle.destroy

    redirect_to dashboard_moto_path
  end

  private
  def motorcycle_params
    params.require(:motorcycle).permit(:name, :description, :price)
  end
end
