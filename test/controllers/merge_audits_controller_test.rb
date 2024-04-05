require "test_helper"

class MergeAuditsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @merge_audit = merge_audits(:one)
  end

  test "should get index" do
    get merge_audits_url, as: :json
    assert_response :success
  end

  test "should create merge_audit" do
    assert_difference("MergeAudit.count") do
      post merge_audits_url, params: { merge_audit: { creator: @merge_audit.creator, date_voided: @merge_audit.date_voided, merge_type: @merge_audit.merge_type, primary_id: @merge_audit.primary_id, secondary_id: @merge_audit.secondary_id, secondary_previous_merge_id: @merge_audit.secondary_previous_merge_id, void_reason: @merge_audit.void_reason, voided: @merge_audit.voided, voided_by: @merge_audit.voided_by } }, as: :json
    end

    assert_response :created
  end

  test "should show merge_audit" do
    get merge_audit_url(@merge_audit), as: :json
    assert_response :success
  end

  test "should update merge_audit" do
    patch merge_audit_url(@merge_audit), params: { merge_audit: { creator: @merge_audit.creator, date_voided: @merge_audit.date_voided, merge_type: @merge_audit.merge_type, primary_id: @merge_audit.primary_id, secondary_id: @merge_audit.secondary_id, secondary_previous_merge_id: @merge_audit.secondary_previous_merge_id, void_reason: @merge_audit.void_reason, voided: @merge_audit.voided, voided_by: @merge_audit.voided_by } }, as: :json
    assert_response :success
  end

  test "should destroy merge_audit" do
    assert_difference("MergeAudit.count", -1) do
      delete merge_audit_url(@merge_audit), as: :json
    end

    assert_response :no_content
  end
end
