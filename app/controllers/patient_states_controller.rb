class PatientStatesController < ApplicationController
  before_action :set_patient_state, only: %i[ show update destroy ]

  # GET /patient_states
  def index
    @patient_states = PatientState.all

    render json: @patient_states
  end

  # GET /patient_states/1
  def show
    render json: @patient_state
  end

  # POST /patient_states
  def create
    @patient_state = PatientState.new(patient_state_params)

    if @patient_state.save
      render json: @patient_state, status: :created, location: @patient_state
    else
      render json: @patient_state.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /patient_states/1
  def update
    if @patient_state.update(patient_state_params)
      render json: @patient_state
    else
      render json: @patient_state.errors, status: :unprocessable_entity
    end
  end

  # DELETE /patient_states/1
  def destroy
    @patient_state.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_state
      @patient_state = PatientState.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_state_params
      params.require(:patient_state).permit(:patient_state_id, :patient_program_id, :state, :start_date, :end_date, :creator, :date_created, :changed_by, :date_changed, :voided, :voided_by, :date_voided, :void_reason, :uuid, :site_id)
    end
end
