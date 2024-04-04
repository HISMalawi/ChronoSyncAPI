require "test_helper"

class RelationshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @relationship = relationships(:one)
  end

  test "should get index" do
    get relationships_url, as: :json
    assert_response :success
  end

  test "should create relationship" do
    assert_difference("Relationship.count") do
      post relationships_url, params: { relationship: { creator: @relationship.creator, date_created: @relationship.date_created, date_voided: @relationship.date_voided, person_a: @relationship.person_a, person_b: @relationship.person_b, relationship: @relationship.relationship, relationship_id: @relationship.relationship_id, site_id: @relationship.site_id, uuid: @relationship.uuid, void_reason: @relationship.void_reason, voided: @relationship.voided, voided_by: @relationship.voided_by } }, as: :json
    end

    assert_response :created
  end

  test "should show relationship" do
    get relationship_url(@relationship), as: :json
    assert_response :success
  end

  test "should update relationship" do
    patch relationship_url(@relationship), params: { relationship: { creator: @relationship.creator, date_created: @relationship.date_created, date_voided: @relationship.date_voided, person_a: @relationship.person_a, person_b: @relationship.person_b, relationship: @relationship.relationship, relationship_id: @relationship.relationship_id, site_id: @relationship.site_id, uuid: @relationship.uuid, void_reason: @relationship.void_reason, voided: @relationship.voided, voided_by: @relationship.voided_by } }, as: :json
    assert_response :success
  end

  test "should destroy relationship" do
    assert_difference("Relationship.count", -1) do
      delete relationship_url(@relationship), as: :json
    end

    assert_response :no_content
  end
end
