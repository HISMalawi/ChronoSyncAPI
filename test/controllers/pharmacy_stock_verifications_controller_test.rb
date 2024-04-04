require "test_helper"

class PharmacyStockVerificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pharmacy_stock_verification = pharmacy_stock_verifications(:one)
  end

  test "should get index" do
    get pharmacy_stock_verifications_url, as: :json
    assert_response :success
  end

  test "should create pharmacy_stock_verification" do
    assert_difference("PharmacyStockVerification.count") do
      post pharmacy_stock_verifications_url, params: { pharmacy_stock_verification: { changed_by: @pharmacy_stock_verification.changed_by, creator: @pharmacy_stock_verification.creator, date_changed: @pharmacy_stock_verification.date_changed, date_created: @pharmacy_stock_verification.date_created, date_voided: @pharmacy_stock_verification.date_voided, id: @pharmacy_stock_verification.id, reason: @pharmacy_stock_verification.reason, site_id: @pharmacy_stock_verification.site_id, verification_date: @pharmacy_stock_verification.verification_date, void_reason: @pharmacy_stock_verification.void_reason, voided: @pharmacy_stock_verification.voided, voided_by: @pharmacy_stock_verification.voided_by } }, as: :json
    end

    assert_response :created
  end

  test "should show pharmacy_stock_verification" do
    get pharmacy_stock_verification_url(@pharmacy_stock_verification), as: :json
    assert_response :success
  end

  test "should update pharmacy_stock_verification" do
    patch pharmacy_stock_verification_url(@pharmacy_stock_verification), params: { pharmacy_stock_verification: { changed_by: @pharmacy_stock_verification.changed_by, creator: @pharmacy_stock_verification.creator, date_changed: @pharmacy_stock_verification.date_changed, date_created: @pharmacy_stock_verification.date_created, date_voided: @pharmacy_stock_verification.date_voided, id: @pharmacy_stock_verification.id, reason: @pharmacy_stock_verification.reason, site_id: @pharmacy_stock_verification.site_id, verification_date: @pharmacy_stock_verification.verification_date, void_reason: @pharmacy_stock_verification.void_reason, voided: @pharmacy_stock_verification.voided, voided_by: @pharmacy_stock_verification.voided_by } }, as: :json
    assert_response :success
  end

  test "should destroy pharmacy_stock_verification" do
    assert_difference("PharmacyStockVerification.count", -1) do
      delete pharmacy_stock_verification_url(@pharmacy_stock_verification), as: :json
    end

    assert_response :no_content
  end
end
