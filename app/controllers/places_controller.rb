class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :destroy, :edit, :update]

  def index
    @places = Place.where(city: params[:city])
  end


  def new
    @place = Place.new
  end


  def create
    @place = Place.new(place_params)
    @place.save
    if @place.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @place.destroy
    redirect_to places_path
  end

  def edit
  end

  def update
    @place.update(place_params)

    redirect_to place_path(@place)
  end

  def set_place
    @place = Place.find(params[:id])
  end



  private

  def place_params
    params.require(:place).permit(:name, :address, :zipcode, :city, :capacity, :rooms, :beds, :description, :rate, :available)
  end

end



