class PharmacyBatchItemsController < ApplicationController
  before_action :set_pharmacy_batch_item, only: %i[ show update destroy ]

  # GET /pharmacy_batch_items
  def index
    @pharmacy_batch_items = PharmacyBatchItem.all

    render json: @pharmacy_batch_items
  end

  # GET /pharmacy_batch_items/1
  def show
    render json: @pharmacy_batch_item
  end

  # POST /pharmacy_batch_items
  def create
    @pharmacy_batch_item = PharmacyBatchItem.new(pharmacy_batch_item_params)

    if @pharmacy_batch_item.save
      render json: @pharmacy_batch_item, status: :created, location: @pharmacy_batch_item
    else
      render json: @pharmacy_batch_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pharmacy_batch_items/1
  def update
    if @pharmacy_batch_item.update(pharmacy_batch_item_params)
      render json: @pharmacy_batch_item
    else
      render json: @pharmacy_batch_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pharmacy_batch_items/1
  def destroy
    @pharmacy_batch_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pharmacy_batch_item
      @pharmacy_batch_item = PharmacyBatchItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pharmacy_batch_item_params
      params.require(:pharmacy_batch_item).permit(:id, :pharmacy_batch_id, :drug_id, :delivered_quantity, :current_quantity, :delivery_date, :expiry_date, :creator, :date_created, :date_changed, :voided, :voided_by, :void_reason, :date_voided, :changed_by, :pack_size, :barcode, :product_code, :site_id)
    end
end
