class ExperiencesController < ApplicationController
  before_action :authenticate_user!, :define_user

  def index
    filtering_params(params).each do |key, value|
      @experiences = @experiences.public_send(key, value) if value.present?
    end
    render json: @experiences, each_serializer: SimpleExperienceSerializer
  end

  def show
    @experience = Experience.find(params[:id])
    render json: @experience
  end

  def update

  end

  def new

  end

  def home
    
  end


  def define_user
    if current_user.user_type?('unlimited')
      @experiences = Experience.all
    else
      @experiences = Experience.find(current_user.id)
    end
    @experiences 
  end

  private

    def filtering_params(params)
      params.slice(
        :by_name,
        :by_status
        # :group_id, :log_notes, :transportation_notes, :accomodation_notes, :path, :name , :continent_id, :country_id, :season, :budget, :keyword,
      )
    end

end
