require "test_helper"

class PersonAttributesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_attribute = person_attributes(:one)
  end

  test "should get index" do
    get person_attributes_url, as: :json
    assert_response :success
  end

  test "should create person_attribute" do
    assert_difference("PersonAttribute.count") do
      post person_attributes_url, params: { person_attribute: { changed_by: @person_attribute.changed_by, creator: @person_attribute.creator, date_changed: @person_attribute.date_changed, date_created: @person_attribute.date_created, date_voided: @person_attribute.date_voided, person_attribute_id: @person_attribute.person_attribute_id, person_attribute_type_id: @person_attribute.person_attribute_type_id, person_id: @person_attribute.person_id, site_id: @person_attribute.site_id, uuid: @person_attribute.uuid, value: @person_attribute.value, void_reason: @person_attribute.void_reason, voided: @person_attribute.voided, voided_by: @person_attribute.voided_by } }, as: :json
    end

    assert_response :created
  end

  test "should show person_attribute" do
    get person_attribute_url(@person_attribute), as: :json
    assert_response :success
  end

  test "should update person_attribute" do
    patch person_attribute_url(@person_attribute), params: { person_attribute: { changed_by: @person_attribute.changed_by, creator: @person_attribute.creator, date_changed: @person_attribute.date_changed, date_created: @person_attribute.date_created, date_voided: @person_attribute.date_voided, person_attribute_id: @person_attribute.person_attribute_id, person_attribute_type_id: @person_attribute.person_attribute_type_id, person_id: @person_attribute.person_id, site_id: @person_attribute.site_id, uuid: @person_attribute.uuid, value: @person_attribute.value, void_reason: @person_attribute.void_reason, voided: @person_attribute.voided, voided_by: @person_attribute.voided_by } }, as: :json
    assert_response :success
  end

  test "should destroy person_attribute" do
    assert_difference("PersonAttribute.count", -1) do
      delete person_attribute_url(@person_attribute), as: :json
    end

    assert_response :no_content
  end
end
