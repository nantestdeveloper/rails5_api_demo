class RentalPropertiesController < ApplicationController
  before_action :set_rental_property, only: [:show, :update, :destroy]

  # GET /rental_properties
  def index
    @rental_properties = RentalProperty.all

    render json: @rental_properties
  end

  # GET /rental_properties/1
  def show
    render json: @rental_property
  end

  # POST /rental_properties
  def create
    @rental_property = RentalProperty.new(rental_property_params)

    if @rental_property.save
      render json: @rental_property, status: :created, location: @rental_property
    else
      render json: @rental_property.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rental_properties/1
  def update
    if @rental_property.update(rental_property_params)
      render json: @rental_property
    else
      render json: @rental_property.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rental_properties/1
  def destroy
    @rental_property.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rental_property
      @rental_property = RentalProperty.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rental_property_params
      params.require(:rental_property).permit(:name, :address, :rooms, :bathrooms, :price_cents)
    end
end
