class ItinerariesController < ApplicationController
  def index
    @itineraries = Itinerary.all
  end

  def show
    @itinerary = Itinerary.find params[:id]
    @destinations = @itinerary.destinations
  end

  def new
    @itinerary = Itinerary.new
  end

  def edit
    @itinerary = Itinerary.find params[:id]
  end

  def destroy
    Itinerary.find(params[:id]).destroy
    redirect_to itineraries_path
  end


end
