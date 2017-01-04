class ItinerariesController < ApplicationController
  def index
    @itineraries = Itinerary.all
    render json: @itineraries
  end

  def show
    @itinerary = Itinerary.find(params[:id])
    render json: @itinerary
  end

  def update

  end

  def new

  end

  private

  def itinerary_params
    params.require(:itinerary).permit(:itinerary_id)
  end

end
