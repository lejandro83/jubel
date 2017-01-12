class GuestsController < ApplicationController

  def index
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
