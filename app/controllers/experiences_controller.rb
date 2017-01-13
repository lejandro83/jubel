class ExperiencesController < ApplicationController
  before_action :authenticate_user!
  respond_to :html, :json

  def index
    @experiences = Experience.all if current_user.user_type?('unlimited')
    @experiences = Experience.where(user_id: current_user.id) if !current_user.user_type?('unlimited')
    
    filtering_params(params).each do |key, value|
      @experiences = @experiences.public_send(key, value) if value.present?
    end
    
     respond_with(@experiences, each_serializer: SimpleExperienceSerializer)
  end

  def show
    @experience = Experience.find(params[:id]) if current_user.user_type?('unlimited')
    @experience = Experience.where(id: params[:id], user_id: current_user.id) if !current_user.user_type?('unlimited')
    respond_with(@experience)
  end

  def update

  end

  def new

  end

  def home
    
  end

  # def define_user
  #   if current_user.user_type?('unlimited')
  #     @experiences = Experience.all
  #   else
  #     @experiences = Experience.where(status: :new_experience, user_id: current_user.id)
  #   end
  #   @experiences 
  # end

  private

    def filtering_params(params)
      params.slice(
        :by_name,
        :by_status
        # :group_id, :log_notes, :transportation_notes, :accomodation_notes, :path, :name , :continent_id, :country_id, :season, :budget, :keyword,
      )
    end

end
