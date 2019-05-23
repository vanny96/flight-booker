class BookingsController < ApplicationController

  def new
    flight = Flight.find(params[:booking][:flight])
    @number_of_passengers = params[:booking][:number_of_passengers]
    @booking = Booking.new(flight: flight)
  end

  def create
    @booking = Booking.new params_for_booking

    if @booking.save
      flash[:succes] = 'Booked the flight'
      redirect_to @booking
    else
      @number_of_passengers = params[:booking][:number_of_passengers]
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def params_for_booking
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end

end
