class UsersController < ApplicationController
  before_action :authenticate_user!, :define_user

  def index
    filtering_params(params).each do |key, value|
      @users = @users.public_send(key, value) if value.present?
    end
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def update

  end

  def new

  end

  def define_user
    if current_user.user_type?('unlimited')
      @users = User.all
    else
      @user = User.find(current_user.id)
    end
  end

  private

    def filtering_params(params)
      params.slice(
        :by_name
        # :group_id, :log_notes, :transportation_notes, :accomodation_notes, :path, :name , :continent_id, :country_id, :season, :budget, :keyword,
      )
    end

end
