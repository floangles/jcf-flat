module Profile
  class PlacesController < ApplicationController
    layout 'profile'

    before_action :authenticate_user!

    def index
      @places = current_user.places
    end

    # ...
  end
end
