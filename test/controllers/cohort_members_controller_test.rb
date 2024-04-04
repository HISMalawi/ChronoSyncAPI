require "test_helper"

class CohortMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cohort_member = cohort_members(:one)
  end

  test "should get index" do
    get cohort_members_url, as: :json
    assert_response :success
  end

  test "should create cohort_member" do
    assert_difference("CohortMember.count") do
      post cohort_members_url, params: { cohort_member: { cohort_id: @cohort_member.cohort_id, patient_id: @cohort_member.patient_id } }, as: :json
    end

    assert_response :created
  end

  test "should show cohort_member" do
    get cohort_member_url(@cohort_member), as: :json
    assert_response :success
  end

  test "should update cohort_member" do
    patch cohort_member_url(@cohort_member), params: { cohort_member: { cohort_id: @cohort_member.cohort_id, patient_id: @cohort_member.patient_id } }, as: :json
    assert_response :success
  end

  test "should destroy cohort_member" do
    assert_difference("CohortMember.count", -1) do
      delete cohort_member_url(@cohort_member), as: :json
    end

    assert_response :no_content
  end
end
