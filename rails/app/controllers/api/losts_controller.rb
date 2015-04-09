class Api::LostsController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def index
    @losts = Lost.all
    render json: @losts
  end

  def show
    render json: Lost.find(params[:id])
  end

  def update
    @lost = Lost.find(params[:id])
    if @lost.update(lost_params)
      render json: @lost
    else
      render json: @lost.errors, status: :unprocessable_entity
    end
  end

  def create
    @lost = Lost.new(lost_params)
    if @lost.save
      render json: @lost, status: :created, location: @lost
    else
      render json: @lost.errors, status: :unprocessable_eintity
    end
  end

  def destroy
    @lost = Lost.find(params[:id])
    @lost.destroy
    head :no_content
  end

  private
  def lost_params
    params.require(:lost).permit(:date, :address, :time, :pet_id)
  end

end
