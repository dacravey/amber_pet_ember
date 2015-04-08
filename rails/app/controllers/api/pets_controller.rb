class Api::PetsController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def new
    @pet = Pet.new
  end

  def index
    render json: Pet.all
  end

  def show
    render json: Pet.find(params[:id])
  end

  def edit
    render json: Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      flash[:notice] = 'Profile for ' + @pet.name + ' has been updated.'
      redirect_to api_pets_path
    else
      render :edit
    end
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      render json: @pet, status: :created, location: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to api_pets_path
  end

private
  def pet_params
    params.require(:pet).permit(:name, :avatar, :age, :breed, :chip_number, :description )
  end

end
