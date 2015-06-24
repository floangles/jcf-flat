class PlacesController < ApplicationController


  def index
    @places = Place.where(city: params[:city])
  end

  def show
    @booking = Booking.new
    @place = Place.find(params[:id])
  end


  private

  def place_params
    params.require(:place).permit(:name, :address, :zipcode, :city, :capacity,
     :rooms, :beds, :description, :rate, :available, :picture)
  end

end



