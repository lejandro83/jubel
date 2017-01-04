class TripsController < ApplicationController
  def index
    @trips = Trip.all
    render json: @trips
  end

  def show
    @trip = Experience.find(params[:id])
    render json: @trip
  end

  def update

  end

  def new

  end

  private

  def trip_params
    params.require(:trip).permit(:trip_id)
  end

end
