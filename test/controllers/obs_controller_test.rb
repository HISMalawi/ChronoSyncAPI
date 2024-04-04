require "test_helper"

class ObsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ob = obs(:one)
  end

  test "should get index" do
    get obs_url, as: :json
    assert_response :success
  end

  test "should create ob" do
    assert_difference("Ob.count") do
      post obs_url, params: { ob: { accession_number: @ob.accession_number, comments: @ob.comments, concept_id: @ob.concept_id, creator: @ob.creator, date_created: @ob.date_created, date_started: @ob.date_started, date_stopped: @ob.date_stopped, date_voided: @ob.date_voided, encounter_id: @ob.encounter_id, location_id: @ob.location_id, obs_datetime: @ob.obs_datetime, obs_group_id: @ob.obs_group_id, obs_id: @ob.obs_id, order_id: @ob.order_id, person_id: @ob.person_id, site_id: @ob.site_id, uuid: @ob.uuid, value_boolean: @ob.value_boolean, value_coded: @ob.value_coded, value_coded_name_id: @ob.value_coded_name_id, value_complex: @ob.value_complex, value_datetime: @ob.value_datetime, value_drug: @ob.value_drug, value_group_id: @ob.value_group_id, value_modifier: @ob.value_modifier, value_numeric: @ob.value_numeric, value_text: @ob.value_text, void_reason: @ob.void_reason, voided: @ob.voided, voided_by: @ob.voided_by } }, as: :json
    end

    assert_response :created
  end

  test "should show ob" do
    get ob_url(@ob), as: :json
    assert_response :success
  end

  test "should update ob" do
    patch ob_url(@ob), params: { ob: { accession_number: @ob.accession_number, comments: @ob.comments, concept_id: @ob.concept_id, creator: @ob.creator, date_created: @ob.date_created, date_started: @ob.date_started, date_stopped: @ob.date_stopped, date_voided: @ob.date_voided, encounter_id: @ob.encounter_id, location_id: @ob.location_id, obs_datetime: @ob.obs_datetime, obs_group_id: @ob.obs_group_id, obs_id: @ob.obs_id, order_id: @ob.order_id, person_id: @ob.person_id, site_id: @ob.site_id, uuid: @ob.uuid, value_boolean: @ob.value_boolean, value_coded: @ob.value_coded, value_coded_name_id: @ob.value_coded_name_id, value_complex: @ob.value_complex, value_datetime: @ob.value_datetime, value_drug: @ob.value_drug, value_group_id: @ob.value_group_id, value_modifier: @ob.value_modifier, value_numeric: @ob.value_numeric, value_text: @ob.value_text, void_reason: @ob.void_reason, voided: @ob.voided, voided_by: @ob.voided_by } }, as: :json
    assert_response :success
  end

  test "should destroy ob" do
    assert_difference("Ob.count", -1) do
      delete ob_url(@ob), as: :json
    end

    assert_response :no_content
  end
end
