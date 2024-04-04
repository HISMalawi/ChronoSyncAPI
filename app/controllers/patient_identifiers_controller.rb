class PatientIdentifiersController < ApplicationController
  before_action :set_patient_identifier, only: %i[ show update destroy ]

  # GET /patient_identifiers
  def index
    @patient_identifiers = PatientIdentifier.all

    render json: @patient_identifiers
  end

  # GET /patient_identifiers/1
  def show
    render json: @patient_identifier
  end

  # POST /patient_identifiers
  def create
    @patient_identifier = PatientIdentifier.new(patient_identifier_params)

    if @patient_identifier.save
      render json: @patient_identifier, status: :created, location: @patient_identifier
    else
      render json: @patient_identifier.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /patient_identifiers/1
  def update
    if @patient_identifier.update(patient_identifier_params)
      render json: @patient_identifier
    else
      render json: @patient_identifier.errors, status: :unprocessable_entity
    end
  end

  # DELETE /patient_identifiers/1
  def destroy
    @patient_identifier.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_identifier
      @patient_identifier = PatientIdentifier.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_identifier_params
      params.require(:patient_identifier).permit(:patient_identifier_id, :patient_id, :identifier, :identifier_type, :preferred, :location_id, :creator, :date_created, :voided, :voided_by, :date_voided, :void_reason, :uuid, :site_id)
    end
end
