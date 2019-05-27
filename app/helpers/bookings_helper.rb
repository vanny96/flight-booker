module BookingsHelper

  def send_emails booking
    booking.passengers.each do |passenger|
      PassengerMailer.with(user: passenger, booking: booking).tickets_email.deliver_later
    end
  end
end
