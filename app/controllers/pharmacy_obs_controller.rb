class PharmacyObsController < ApplicationController
  before_action :set_pharmacy_ob, only: %i[ show update destroy ]

  # GET /pharmacy_obs
  def index
    @pharmacy_obs = PharmacyOb.all

    render json: @pharmacy_obs
  end

  # GET /pharmacy_obs/1
  def show
    render json: @pharmacy_ob
  end

  # POST /pharmacy_obs
  def create
    @pharmacy_ob = PharmacyOb.new(pharmacy_ob_params)

    if @pharmacy_ob.save
      render json: @pharmacy_ob, status: :created, location: @pharmacy_ob
    else
      render json: @pharmacy_ob.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pharmacy_obs/1
  def update
    if @pharmacy_ob.update(pharmacy_ob_params)
      render json: @pharmacy_ob
    else
      render json: @pharmacy_ob.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pharmacy_obs/1
  def destroy
    @pharmacy_ob.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pharmacy_ob
      @pharmacy_ob = PharmacyOb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pharmacy_ob_params
      params.require(:pharmacy_ob).permit(:pharmacy_module_id, :pharmacy_encounter_type, :quantity, :creator, :date_created, :voided, :voided_by, :date_voided, :void_reason, :batch_item_id, :dispensation_obs_id, :transaction_reason, :transaction_date, :stock_verification_id, :obs_group_id, :site_id)
    end
end
