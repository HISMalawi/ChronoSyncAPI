class PharmacyStockBalancesController < ApplicationController
  before_action :set_pharmacy_stock_balance, only: %i[ show update destroy ]

  # GET /pharmacy_stock_balances
  def index
    @pharmacy_stock_balances = PharmacyStockBalance.all

    render json: @pharmacy_stock_balances
  end

  # GET /pharmacy_stock_balances/1
  def show
    render json: @pharmacy_stock_balance
  end

  # POST /pharmacy_stock_balances
  def create
    @pharmacy_stock_balance = PharmacyStockBalance.new(pharmacy_stock_balance_params)

    if @pharmacy_stock_balance.save
      render json: @pharmacy_stock_balance, status: :created, location: @pharmacy_stock_balance
    else
      render json: @pharmacy_stock_balance.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pharmacy_stock_balances/1
  def update
    if @pharmacy_stock_balance.update(pharmacy_stock_balance_params)
      render json: @pharmacy_stock_balance
    else
      render json: @pharmacy_stock_balance.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pharmacy_stock_balances/1
  def destroy
    @pharmacy_stock_balance.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pharmacy_stock_balance
      @pharmacy_stock_balance = PharmacyStockBalance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pharmacy_stock_balance_params
      params.require(:pharmacy_stock_balance).permit(:id, :drug_id, :pack_size, :open_balance, :close_balance, :transaction_date, :site_id)
    end
end
