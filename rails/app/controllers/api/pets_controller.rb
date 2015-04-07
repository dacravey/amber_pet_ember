class Api::PetsController < ApplicationController
  def index
    render json: Pet.all
  end

  def show
    render json: Pet.find(params[:id])
  end

  def create
  end

  def destroy
  end

  def
end
