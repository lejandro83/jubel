class TripTemplatesController < ApplicationController
  def index
    @trip_templates = TripTemplate.all
    render json: @trip_templates
  end

  def show
    @trip_template = TripTemplate.find(params[:id])
    render json: @trip_template
  end

  def update

  end

  def new

  end

  private

  def trip_template_params
    params.require(:trip_template).permit(:trip_template_id)
  end

end
