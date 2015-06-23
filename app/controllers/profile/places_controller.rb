module Profile
  class PlacesController < ApplicationController
    layout 'profile'

    before_action :authenticate_user!, :set_place, only: [:show, :destroy, :edit, :update]


    def index
      @places = current_user.places
    end

    def new
      @place = Place.new
    end

    def create
      @place = Place.new(place_params)
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
      redirect_to profil_places_path
    end

    def update
      @place.update(place_params)
      redirect_to profil_place_path(@place)
    end

    def set_place
    @place = Place.find(params[:id])
    end

    private

    def place_params
      params.require(:place).permit(:name, :address, :zipcode, :city, :capacity, :rooms, :beds, :description, :rate, :available)
    end

  end
end



