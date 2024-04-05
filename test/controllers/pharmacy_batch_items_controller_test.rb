require "test_helper"

class PharmacyBatchItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pharmacy_batch_item = pharmacy_batch_items(:one)
  end

  test "should get index" do
    get pharmacy_batch_items_url, as: :json
    assert_response :success
  end

  test "should create pharmacy_batch_item" do
    assert_difference("PharmacyBatchItem.count") do
      post pharmacy_batch_items_url, params: { pharmacy_batch_item: { barcode: @pharmacy_batch_item.barcode, changed_by: @pharmacy_batch_item.changed_by, creator: @pharmacy_batch_item.creator, current_quantity: @pharmacy_batch_item.current_quantity, date_changed: @pharmacy_batch_item.date_changed, date_created: @pharmacy_batch_item.date_created, date_voided: @pharmacy_batch_item.date_voided, delivered_quantity: @pharmacy_batch_item.delivered_quantity, delivery_date: @pharmacy_batch_item.delivery_date, drug_id: @pharmacy_batch_item.drug_id, expiry_date: @pharmacy_batch_item.expiry_date, id: @pharmacy_batch_item.id, pack_size: @pharmacy_batch_item.pack_size, pharmacy_batch_id: @pharmacy_batch_item.pharmacy_batch_id, product_code: @pharmacy_batch_item.product_code, site_id: @pharmacy_batch_item.site_id, void_reason: @pharmacy_batch_item.void_reason, voided: @pharmacy_batch_item.voided, voided_by: @pharmacy_batch_item.voided_by } }, as: :json
    end

    assert_response :created
  end

  test "should show pharmacy_batch_item" do
    get pharmacy_batch_item_url(@pharmacy_batch_item), as: :json
    assert_response :success
  end

  test "should update pharmacy_batch_item" do
    patch pharmacy_batch_item_url(@pharmacy_batch_item), params: { pharmacy_batch_item: { barcode: @pharmacy_batch_item.barcode, changed_by: @pharmacy_batch_item.changed_by, creator: @pharmacy_batch_item.creator, current_quantity: @pharmacy_batch_item.current_quantity, date_changed: @pharmacy_batch_item.date_changed, date_created: @pharmacy_batch_item.date_created, date_voided: @pharmacy_batch_item.date_voided, delivered_quantity: @pharmacy_batch_item.delivered_quantity, delivery_date: @pharmacy_batch_item.delivery_date, drug_id: @pharmacy_batch_item.drug_id, expiry_date: @pharmacy_batch_item.expiry_date, id: @pharmacy_batch_item.id, pack_size: @pharmacy_batch_item.pack_size, pharmacy_batch_id: @pharmacy_batch_item.pharmacy_batch_id, product_code: @pharmacy_batch_item.product_code, site_id: @pharmacy_batch_item.site_id, void_reason: @pharmacy_batch_item.void_reason, voided: @pharmacy_batch_item.voided, voided_by: @pharmacy_batch_item.voided_by } }, as: :json
    assert_response :success
  end

  test "should destroy pharmacy_batch_item" do
    assert_difference("PharmacyBatchItem.count", -1) do
      delete pharmacy_batch_item_url(@pharmacy_batch_item), as: :json
    end

    assert_response :no_content
  end
end
