class UserMailer < ApplicationMailer
  def welcome(user)

    @user = user  # Instance variable => available in view

    mail(to: @user.email, subject: 'Welcome to the Richbnb')
    # This will render a view in `app/views/user_mailer`!
  end

  def creation_confirmation(place)
    @place = place

    mail(
      to:       @place.user.email,
      subject:  "place #{@place.name} created!"
    )
  end
end
