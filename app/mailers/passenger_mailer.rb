class PassengerMailer < ApplicationMailer
  def tickets_email
    @user = params[:user]
    @booking = params[:booking]
    mail(to: @user.email, subject: "Here your tickets!")
  end
end
