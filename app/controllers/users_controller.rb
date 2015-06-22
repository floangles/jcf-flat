class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def new
  end

  def create
    @user = User.new(user_params)
    @user.save
    # redirection tbd
  end

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
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email,
      :phone_number, :address, :zipcode, :city, :sex, :description)
  end
end
