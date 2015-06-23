class PlacesController < ApplicationController

  def index
    @places = Place.where(city: params[:city])
  end

end
