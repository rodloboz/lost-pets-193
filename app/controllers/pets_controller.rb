class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    # always submits to create
    @pet = Pet.new
  end

  def create
    params[:pet][:species].downcase!
    @pet = Pet.new(pet_params)
    # set the date
    @pet.found_on = Time.now
    @pet.save

    redirect_to pets_path
  end

  def edit
    # always submits to update
  end

  def update
    params[:pet][:species].downcase!
    @pet.update(pet_params)

    redirect_to pets_path
  end

  def destroy
    @pet.destroy

    redirect_to pets_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :species, :address)
  end

  def set_pet
    @pet = Pet.find(params[:id])
  end

end
