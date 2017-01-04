class ItemsController < ApplicationController
  def index
    @items = Item.all
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

  private

  def item_params
    params.require(:item).permit(:item_id)
  end
end
