class FlightsController < ApplicationController
  def index
    @cities = City.all
    @dates = Flight.select(:take_off).map {|flight| flight.take_off.to_date}.uniq

    if params[:city].kind_of?(ActionController::Parameters)
      destination = params[:city][:destination]
      departure = params[:city][:departure]
      take_off = params[:city][:take_off]
      @flights = Flight.from_city(departure).to_city(destination).leaving(take_off)
    end
  end
end
