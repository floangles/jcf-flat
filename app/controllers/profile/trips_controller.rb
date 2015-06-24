module Profile
  class TripsController < ApplicationController
    layout 'profile'

    before_action :authenticate_user!
    before_action :set_place, only: [:show, :destroy, :edit, :update]


    def index
      @places = current_user.places
    end

    def new
      @place = Place.new
    end

    def create
      @place = current_user.places.new(place_params)
      @place.save

      if @place.save
        redirect_to profile_places_path
      else
        render :new
      end
    end

    def show
    end

    def destroy
      @place.destroy
      redirect_to profile_places_path
    end

    def edit
    end

    def update
      @place.update(place_params)

      if @place.save
      redirect_to profile_places_path
      else
        render :edit
      end
    end

    def set_place
    @place = current_user.places.find(params[:id])
    end

    private

    def place_params
      params.require(:place).permit(:name, :address, :zipcode, :city, :capacity, :rooms, :beds, :description, :rate, :available, :picture)
    end

  end
end
