class DestinationsController < ApplicationController
  def show
    @itinerary = Itinerary.find params[:itinerary_id]
    @destination = Destination.find params[:id]
    # @companions = @itinerary.companions
  end

  def new
  end

  def edit
  end
end
