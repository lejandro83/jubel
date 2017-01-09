class ItemsController < ApplicationController
  before_action :authenticate_user!, :define_user

  def index
    filtering_params(params).each do |key, value|
      @items = @items.public_send(key, value) if value.present?
    end
    render json: @items
  end

  def show
    @item = Item.find(params[:id])
    render json: @item
  end

  def update

  end

  def new

  end

  def define_user
    if current_user.user_type?('unlimited')
      @items = Item.all
    else
      @items = Item.find(current_user.id)
    end
    @items 
  end

  private

    def filtering_params(params)
      params.slice(
        :by_name,
        :by_type
      )
    end
end
