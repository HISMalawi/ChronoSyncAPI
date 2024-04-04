class PatientProgramsController < ApplicationController
  before_action :set_patient_program, only: %i[ show update destroy ]

  # GET /patient_programs
  def index
    @patient_programs = PatientProgram.all

    render json: @patient_programs
  end

  # GET /patient_programs/1
  def show
    render json: @patient_program
  end

  # POST /patient_programs
  def create
    @patient_program = PatientProgram.new(patient_program_params)

    if @patient_program.save
      render json: @patient_program, status: :created, location: @patient_program
    else
      render json: @patient_program.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /patient_programs/1
  def update
    if @patient_program.update(patient_program_params)
      render json: @patient_program
    else
      render json: @patient_program.errors, status: :unprocessable_entity
    end
  end

  # DELETE /patient_programs/1
  def destroy
    @patient_program.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_program
      @patient_program = PatientProgram.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_program_params
      params.require(:patient_program).permit(:patient_program_id, :patient_id, :program_id, :date_enrolled, :date_completed, :creator, :date_created, :changed_by, :date_changed, :voided, :voided_by, :date_voided, :void_reason, :uuid, :location_id, :site_id)
    end
end
