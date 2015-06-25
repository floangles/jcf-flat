class PlacesController < ApplicationController

  # before_action :set_place, only: [:show, :destroy, :edit, :update]




  def index
    @places = Place.where(city: params[:city])
  end

  def show

    @booking = Booking.new
    @place = Place.find(params[:id])
    @alert_message = "You are viewing #{@place.name}"
    @place_coordinates = { lat: @flat.lat, lng: @flat.lng }

  end


  private

  def place_params
    params.require(:place).permit(:name, :address, :zipcode, :city, :capacity,
     :rooms, :beds, :description, :rate, :available, :picture)
  end

end



