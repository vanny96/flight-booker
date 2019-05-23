class FlightsController < ApplicationController
  def index
    @cities = City.all
    @dates = Flight.select(:take_off).map {|flight| flight.take_off.to_date}.uniq

    if params[:flight].kind_of?(ActionController::Parameters)
      destination = params[:flight][:destination]
      departure = params[:flight][:departure]
      take_off = params[:flight][:take_off]
      @number_of_passengers = params[:flight][:number_of_passengers]
      @flights = Flight.from_city(departure).to_city(destination).leaving(take_off)
    end
  end
end
