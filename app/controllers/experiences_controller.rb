class ExperiencesController < ApplicationController

  def index
    @experiences = Experience.all
    render json: @experiences
  end

  def show
    @experience = Experience.find(params[:id])
    render json: @experience
  end

  def update

  end

  def new

  end

  private

  def experience_params
    params.require(:experience).permit(:experience_id, :path, :name , :continent_id, :country_id,:season,:budget,:keyword,:status_id,:group_id,:log_notes,:transportation_notes,:accomodation_notes)
  end

end
