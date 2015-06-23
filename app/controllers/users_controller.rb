class UsersController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    # redirection tbd
  end


  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email,
      :phone_number, :address, :zipcode, :city, :sex, :description)
  end
end
