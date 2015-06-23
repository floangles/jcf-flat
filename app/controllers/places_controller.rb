class PlacesController < ApplicationController


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
    @Place = Place.find(params[:id])

  end

  private

  def place_params
    params.require(:place).permit(:name, :address, :zipcode, :city, :capacity,
     :rooms, :beds, :description, :rate, :available, :picture)
  end

end



