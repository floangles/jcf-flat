module Profile
  class RentingsController < ApplicationController
    layout 'profile'
    before_action :authenticate_user!

    def index
      @rentings = current_user.rentings
    end
  end

end




