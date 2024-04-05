require "test_helper"

class PharmacyStockBalancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pharmacy_stock_balance = pharmacy_stock_balances(:one)
  end

  test "should get index" do
    get pharmacy_stock_balances_url, as: :json
    assert_response :success
  end

  test "should create pharmacy_stock_balance" do
    assert_difference("PharmacyStockBalance.count") do
      post pharmacy_stock_balances_url, params: { pharmacy_stock_balance: { close_balance: @pharmacy_stock_balance.close_balance, drug_id: @pharmacy_stock_balance.drug_id, id: @pharmacy_stock_balance.id, open_balance: @pharmacy_stock_balance.open_balance, pack_size: @pharmacy_stock_balance.pack_size, site_id: @pharmacy_stock_balance.site_id, transaction_date: @pharmacy_stock_balance.transaction_date } }, as: :json
    end

    assert_response :created
  end

  test "should show pharmacy_stock_balance" do
    get pharmacy_stock_balance_url(@pharmacy_stock_balance), as: :json
    assert_response :success
  end

  test "should update pharmacy_stock_balance" do
    patch pharmacy_stock_balance_url(@pharmacy_stock_balance), params: { pharmacy_stock_balance: { close_balance: @pharmacy_stock_balance.close_balance, drug_id: @pharmacy_stock_balance.drug_id, id: @pharmacy_stock_balance.id, open_balance: @pharmacy_stock_balance.open_balance, pack_size: @pharmacy_stock_balance.pack_size, site_id: @pharmacy_stock_balance.site_id, transaction_date: @pharmacy_stock_balance.transaction_date } }, as: :json
    assert_response :success
  end

  test "should destroy pharmacy_stock_balance" do
    assert_difference("PharmacyStockBalance.count", -1) do
      delete pharmacy_stock_balance_url(@pharmacy_stock_balance), as: :json
    end

    assert_response :no_content
  end
end
