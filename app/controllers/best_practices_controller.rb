class BestPracticesController < ApplicationController
  def index
    @best_practices = BestPractice.all
    render json: @best_practices
  end

  def show
    @best_practice = BestPractice.find(params[:id])
    render json: @best_practice
  end

  def update

  end

  def new

  end

  private

  def best_practice_params
    params.require(:best_practice).permit(:best_practice_id)
  end

end
