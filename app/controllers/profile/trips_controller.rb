module Profile
  class TripsController < ApplicationController
    layout 'profile'

    before_action :authenticate_user!
    before_action :set_trip, only: [:show, :destroy]


    def index
      @trips = current_user.bookings
    end


    def show
    end

    def destroy
      @trip.destroy
      redirect_to profile_trips_path
    end


    def set_trip
    @trip = current_user.bookings.find(params[:id])
    end

    private

    def trip_params
      params.require(:trip).permit(:name, :address, :zipcode, :city, :capacity, :rooms, :beds, :description, :rate, :available, :picture)
    end

  end
end
