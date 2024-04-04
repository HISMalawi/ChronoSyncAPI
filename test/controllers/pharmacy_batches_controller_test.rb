require "test_helper"

class PharmacyBatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pharmacy_batch = pharmacy_batches(:one)
  end

  test "should get index" do
    get pharmacy_batches_url, as: :json
    assert_response :success
  end

  test "should create pharmacy_batch" do
    assert_difference("PharmacyBatch.count") do
      post pharmacy_batches_url, params: { pharmacy_batch: { batch_number: @pharmacy_batch.batch_number, changed_by: @pharmacy_batch.changed_by, creator: @pharmacy_batch.creator, date_changed: @pharmacy_batch.date_changed, date_created: @pharmacy_batch.date_created, date_voided: @pharmacy_batch.date_voided, id: @pharmacy_batch.id, location_id: @pharmacy_batch.location_id, site_id: @pharmacy_batch.site_id, void_reason: @pharmacy_batch.void_reason, voided: @pharmacy_batch.voided, voided_by: @pharmacy_batch.voided_by } }, as: :json
    end

    assert_response :created
  end

  test "should show pharmacy_batch" do
    get pharmacy_batch_url(@pharmacy_batch), as: :json
    assert_response :success
  end

  test "should update pharmacy_batch" do
    patch pharmacy_batch_url(@pharmacy_batch), params: { pharmacy_batch: { batch_number: @pharmacy_batch.batch_number, changed_by: @pharmacy_batch.changed_by, creator: @pharmacy_batch.creator, date_changed: @pharmacy_batch.date_changed, date_created: @pharmacy_batch.date_created, date_voided: @pharmacy_batch.date_voided, id: @pharmacy_batch.id, location_id: @pharmacy_batch.location_id, site_id: @pharmacy_batch.site_id, void_reason: @pharmacy_batch.void_reason, voided: @pharmacy_batch.voided, voided_by: @pharmacy_batch.voided_by } }, as: :json
    assert_response :success
  end

  test "should destroy pharmacy_batch" do
    assert_difference("PharmacyBatch.count", -1) do
      delete pharmacy_batch_url(@pharmacy_batch), as: :json
    end

    assert_response :no_content
  end
end
