class GuestsController < ApplicationController
  def index
    @guests = Trip.all
    render json: @guests
  end

  def show
    @guest = Guest.find(params[:id])
    render json: @guest
  end

  def update

  end

  def new

  end

  private

  def guest_params
    params.require(:guest).permit(:guest_id)
  end

end
