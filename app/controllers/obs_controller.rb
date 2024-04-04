class ObsController < ApplicationController
  before_action :set_ob, only: %i[ show update destroy ]

  # GET /obs
  def index
    @obs = Ob.all

    render json: @obs
  end

  # GET /obs/1
  def show
    render json: @ob
  end

  # POST /obs
  def create
    @ob = Ob.new(ob_params)

    if @ob.save
      render json: @ob, status: :created, location: @ob
    else
      render json: @ob.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /obs/1
  def update
    if @ob.update(ob_params)
      render json: @ob
    else
      render json: @ob.errors, status: :unprocessable_entity
    end
  end

  # DELETE /obs/1
  def destroy
    @ob.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ob
      @ob = Ob.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ob_params
      params.require(:ob).permit(:obs_id, :person_id, :concept_id, :encounter_id, :order_id, :obs_datetime, :location_id, :obs_group_id, :accession_number, :value_group_id, :value_boolean, :value_coded, :value_coded_name_id, :value_drug, :value_datetime, :value_numeric, :value_modifier, :value_text, :date_started, :date_stopped, :comments, :creator, :date_created, :voided, :voided_by, :date_voided, :void_reason, :value_complex, :uuid, :site_id)
    end
end
