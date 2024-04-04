class DrugOrdersController < ApplicationController
  before_action :set_drug_order, only: %i[ show update destroy ]

  # GET /drug_orders
  def index
    @drug_orders = DrugOrder.all

    render json: @drug_orders
  end

  # GET /drug_orders/1
  def show
    render json: @drug_order
  end

  # POST /drug_orders
  def create
    @drug_order = DrugOrder.new(drug_order_params)

    if @drug_order.save
      render json: @drug_order, status: :created, location: @drug_order
    else
      render json: @drug_order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /drug_orders/1
  def update
    if @drug_order.update(drug_order_params)
      render json: @drug_order
    else
      render json: @drug_order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /drug_orders/1
  def destroy
    @drug_order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drug_order
      @drug_order = DrugOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def drug_order_params
      params.require(:drug_order).permit(:order_id, :drug_inventory_id, :dose, :equivalent_daily_dose, :units, :frequency, :prn, :complex, :quantity, :site_id)
    end
end
