require "test_helper"

class PharmacyObsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pharmacy_ob = pharmacy_obs(:one)
  end

  test "should get index" do
    get pharmacy_obs_url, as: :json
    assert_response :success
  end

  test "should create pharmacy_ob" do
    assert_difference("PharmacyOb.count") do
      post pharmacy_obs_url, params: { pharmacy_ob: { batch_item_id: @pharmacy_ob.batch_item_id, creator: @pharmacy_ob.creator, date_created: @pharmacy_ob.date_created, date_voided: @pharmacy_ob.date_voided, dispensation_obs_id: @pharmacy_ob.dispensation_obs_id, obs_group_id: @pharmacy_ob.obs_group_id, pharmacy_encounter_type: @pharmacy_ob.pharmacy_encounter_type, pharmacy_module_id: @pharmacy_ob.pharmacy_module_id, quantity: @pharmacy_ob.quantity, site_id: @pharmacy_ob.site_id, stock_verification_id: @pharmacy_ob.stock_verification_id, transaction_date: @pharmacy_ob.transaction_date, transaction_reason: @pharmacy_ob.transaction_reason, void_reason: @pharmacy_ob.void_reason, voided: @pharmacy_ob.voided, voided_by: @pharmacy_ob.voided_by } }, as: :json
    end

    assert_response :created
  end

  test "should show pharmacy_ob" do
    get pharmacy_ob_url(@pharmacy_ob), as: :json
    assert_response :success
  end

  test "should update pharmacy_ob" do
    patch pharmacy_ob_url(@pharmacy_ob), params: { pharmacy_ob: { batch_item_id: @pharmacy_ob.batch_item_id, creator: @pharmacy_ob.creator, date_created: @pharmacy_ob.date_created, date_voided: @pharmacy_ob.date_voided, dispensation_obs_id: @pharmacy_ob.dispensation_obs_id, obs_group_id: @pharmacy_ob.obs_group_id, pharmacy_encounter_type: @pharmacy_ob.pharmacy_encounter_type, pharmacy_module_id: @pharmacy_ob.pharmacy_module_id, quantity: @pharmacy_ob.quantity, site_id: @pharmacy_ob.site_id, stock_verification_id: @pharmacy_ob.stock_verification_id, transaction_date: @pharmacy_ob.transaction_date, transaction_reason: @pharmacy_ob.transaction_reason, void_reason: @pharmacy_ob.void_reason, voided: @pharmacy_ob.voided, voided_by: @pharmacy_ob.voided_by } }, as: :json
    assert_response :success
  end

  test "should destroy pharmacy_ob" do
    assert_difference("PharmacyOb.count", -1) do
      delete pharmacy_ob_url(@pharmacy_ob), as: :json
    end

    assert_response :no_content
  end
end
