class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update]
  before_action :authenticate_user!

  def new
    # @user = User.find(params[:user_id])
    @place = Place.find(params[:place_id])
    @booking = Booking.new
  end

  def create
    @place = Place.find(params[:place_id])
    @booking = @place.bookings.build(booking_params)
    @booking.user = current_user
    @booking.save
    if @booking.save
      redirect_to profile_places_path
    else
      render :new
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:guests, :checkin, :checkout)
  end
end
