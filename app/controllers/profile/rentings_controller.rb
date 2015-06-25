module Profile
  class RentingsController < ApplicationController
    layout 'profile'
    before_action :authenticate_user!

    def index
      @rentings = current_user.rentings
    end

    def update
      if params[:status] == "Approved"
        @renting = current_user.rentings.find(params[:id])
        @renting.update(status: "Approved")
        redirect_to profile_rentings_path
      elsif params[:status] == "Refused"
        @renting = current_user.rentings.find(params[:id])
        @renting.update(status: "Refused")
        redirect_to profile_rentings_path
      end

      # @booking.flat.update() if you want to update the availability of the flat, for example
    end

  end

end




