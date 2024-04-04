class PharmacyBatchesController < ApplicationController
  before_action :set_pharmacy_batch, only: %i[ show update destroy ]

  # GET /pharmacy_batches
  def index
    @pharmacy_batches = PharmacyBatch.all

    render json: @pharmacy_batches
  end

  # GET /pharmacy_batches/1
  def show
    render json: @pharmacy_batch
  end

  # POST /pharmacy_batches
  def create
    @pharmacy_batch = PharmacyBatch.new(pharmacy_batch_params)

    if @pharmacy_batch.save
      render json: @pharmacy_batch, status: :created, location: @pharmacy_batch
    else
      render json: @pharmacy_batch.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pharmacy_batches/1
  def update
    if @pharmacy_batch.update(pharmacy_batch_params)
      render json: @pharmacy_batch
    else
      render json: @pharmacy_batch.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pharmacy_batches/1
  def destroy
    @pharmacy_batch.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pharmacy_batch
      @pharmacy_batch = PharmacyBatch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pharmacy_batch_params
      params.require(:pharmacy_batch).permit(:id, :batch_number, :creator, :date_created, :date_changed, :voided, :voided_by, :void_reason, :date_voided, :changed_by, :location_id, :site_id)
    end
end
