require "test_helper"

class PharmacyBatchItemReallocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pharmacy_batch_item_reallocation = pharmacy_batch_item_reallocations(:one)
  end

  test "should get index" do
    get pharmacy_batch_item_reallocations_url, as: :json
    assert_response :success
  end

  test "should create pharmacy_batch_item_reallocation" do
    assert_difference("PharmacyBatchItemReallocation.count") do
      post pharmacy_batch_item_reallocations_url, params: { pharmacy_batch_item_reallocation: { batch_item_id: @pharmacy_batch_item_reallocation.batch_item_id, creator: @pharmacy_batch_item_reallocation.creator, date: @pharmacy_batch_item_reallocation.date, date_changed: @pharmacy_batch_item_reallocation.date_changed, date_created: @pharmacy_batch_item_reallocation.date_created, date_voided: @pharmacy_batch_item_reallocation.date_voided, id: @pharmacy_batch_item_reallocation.id, location_id: @pharmacy_batch_item_reallocation.location_id, quantity: @pharmacy_batch_item_reallocation.quantity, reallocation_code: @pharmacy_batch_item_reallocation.reallocation_code, reallocation_type: @pharmacy_batch_item_reallocation.reallocation_type, site_id: @pharmacy_batch_item_reallocation.site_id, void_reason: @pharmacy_batch_item_reallocation.void_reason, voided: @pharmacy_batch_item_reallocation.voided, voided_by: @pharmacy_batch_item_reallocation.voided_by } }, as: :json
    end

    assert_response :created
  end

  test "should show pharmacy_batch_item_reallocation" do
    get pharmacy_batch_item_reallocation_url(@pharmacy_batch_item_reallocation), as: :json
    assert_response :success
  end

  test "should update pharmacy_batch_item_reallocation" do
    patch pharmacy_batch_item_reallocation_url(@pharmacy_batch_item_reallocation), params: { pharmacy_batch_item_reallocation: { batch_item_id: @pharmacy_batch_item_reallocation.batch_item_id, creator: @pharmacy_batch_item_reallocation.creator, date: @pharmacy_batch_item_reallocation.date, date_changed: @pharmacy_batch_item_reallocation.date_changed, date_created: @pharmacy_batch_item_reallocation.date_created, date_voided: @pharmacy_batch_item_reallocation.date_voided, id: @pharmacy_batch_item_reallocation.id, location_id: @pharmacy_batch_item_reallocation.location_id, quantity: @pharmacy_batch_item_reallocation.quantity, reallocation_code: @pharmacy_batch_item_reallocation.reallocation_code, reallocation_type: @pharmacy_batch_item_reallocation.reallocation_type, site_id: @pharmacy_batch_item_reallocation.site_id, void_reason: @pharmacy_batch_item_reallocation.void_reason, voided: @pharmacy_batch_item_reallocation.voided, voided_by: @pharmacy_batch_item_reallocation.voided_by } }, as: :json
    assert_response :success
  end

  test "should destroy pharmacy_batch_item_reallocation" do
    assert_difference("PharmacyBatchItemReallocation.count", -1) do
      delete pharmacy_batch_item_reallocation_url(@pharmacy_batch_item_reallocation), as: :json
    end

    assert_response :no_content
  end
end
