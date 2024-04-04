require "test_helper"

class DrugOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @drug_order = drug_orders(:one)
  end

  test "should get index" do
    get drug_orders_url, as: :json
    assert_response :success
  end

  test "should create drug_order" do
    assert_difference("DrugOrder.count") do
      post drug_orders_url, params: { drug_order: { complex: @drug_order.complex, dose: @drug_order.dose, drug_inventory_id: @drug_order.drug_inventory_id, equivalent_daily_dose: @drug_order.equivalent_daily_dose, frequency: @drug_order.frequency, order_id: @drug_order.order_id, prn: @drug_order.prn, quantity: @drug_order.quantity, site_id: @drug_order.site_id, units: @drug_order.units } }, as: :json
    end

    assert_response :created
  end

  test "should show drug_order" do
    get drug_order_url(@drug_order), as: :json
    assert_response :success
  end

  test "should update drug_order" do
    patch drug_order_url(@drug_order), params: { drug_order: { complex: @drug_order.complex, dose: @drug_order.dose, drug_inventory_id: @drug_order.drug_inventory_id, equivalent_daily_dose: @drug_order.equivalent_daily_dose, frequency: @drug_order.frequency, order_id: @drug_order.order_id, prn: @drug_order.prn, quantity: @drug_order.quantity, site_id: @drug_order.site_id, units: @drug_order.units } }, as: :json
    assert_response :success
  end

  test "should destroy drug_order" do
    assert_difference("DrugOrder.count", -1) do
      delete drug_order_url(@drug_order), as: :json
    end

    assert_response :no_content
  end
end
