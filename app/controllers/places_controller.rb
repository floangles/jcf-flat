class PlacesController < ApplicationController

  # before_action :set_place, only: [:show, :destroy, :edit, :update]




  def index
    @places = Place.where(city: params[:city])
    @markers = Gmaps4rails.build_markers(@places) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
    end
  end

  def show

    @booking = Booking.new
    @place = Place.find(params[:id])
    @markers = Gmaps4rails.build_markers(@place) do |place, marker|
      marker.lat place.latitude
      marker.lng place.longitude
    end
  end


  private

  def place_params
    params.require(:place).permit(:name, :address, :zipcode, :city, :capacity,
     :rooms, :beds, :description, :rate, :available, :picture)
  end

end



