class PersonAddressesController < ApplicationController
  before_action :set_person_address, only: %i[ show update destroy ]

  # GET /person_addresses
  def index
    @person_addresses = PersonAddress.all

    render json: @person_addresses
  end

  # GET /person_addresses/1
  def show
    render json: @person_address
  end

  # POST /person_addresses
  def create
    @person_address = PersonAddress.new(person_address_params)

    if @person_address.save
      render json: @person_address, status: :created, location: @person_address
    else
      render json: @person_address.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /person_addresses/1
  def update
    if @person_address.update(person_address_params)
      render json: @person_address
    else
      render json: @person_address.errors, status: :unprocessable_entity
    end
  end

  # DELETE /person_addresses/1
  def destroy
    @person_address.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_address
      @person_address = PersonAddress.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def person_address_params
      params.require(:person_address).permit(:person_address_id, :person_id, :preferred, :address1, :address2, :city_village, :state_province, :postal_code, :country, :latitude, :longitude, :creator, :date_created, :voided, :voided_by, :date_voided, :void_reason, :county_district, :neighborhood_cell, :region, :subregion, :township_division, :uuid, :site_id)
    end
end
