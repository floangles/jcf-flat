class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :destroy, :edit, :update]

  def index
    @places = Place.where(city: params[:city])
  end

  def show
  end
end



