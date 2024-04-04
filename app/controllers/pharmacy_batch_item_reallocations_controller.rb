class PharmacyBatchItemReallocationsController < ApplicationController
  before_action :set_pharmacy_batch_item_reallocation, only: %i[ show update destroy ]

  # GET /pharmacy_batch_item_reallocations
  def index
    @pharmacy_batch_item_reallocations = PharmacyBatchItemReallocation.all

    render json: @pharmacy_batch_item_reallocations
  end

  # GET /pharmacy_batch_item_reallocations/1
  def show
    render json: @pharmacy_batch_item_reallocation
  end

  # POST /pharmacy_batch_item_reallocations
  def create
    @pharmacy_batch_item_reallocation = PharmacyBatchItemReallocation.new(pharmacy_batch_item_reallocation_params)

    if @pharmacy_batch_item_reallocation.save
      render json: @pharmacy_batch_item_reallocation, status: :created, location: @pharmacy_batch_item_reallocation
    else
      render json: @pharmacy_batch_item_reallocation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pharmacy_batch_item_reallocations/1
  def update
    if @pharmacy_batch_item_reallocation.update(pharmacy_batch_item_reallocation_params)
      render json: @pharmacy_batch_item_reallocation
    else
      render json: @pharmacy_batch_item_reallocation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pharmacy_batch_item_reallocations/1
  def destroy
    @pharmacy_batch_item_reallocation.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pharmacy_batch_item_reallocation
      @pharmacy_batch_item_reallocation = PharmacyBatchItemReallocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pharmacy_batch_item_reallocation_params
      params.require(:pharmacy_batch_item_reallocation).permit(:id, :reallocation_code, :batch_item_id, :quantity, :location_id, :reallocation_type, :date, :date_created, :creator, :date_changed, :voided, :date_voided, :voided_by, :void_reason, :site_id)
    end
end
