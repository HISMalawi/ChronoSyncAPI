require "test_helper"

class EncountersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @encounter = encounters(:one)
  end

  test "should get index" do
    get encounters_url, as: :json
    assert_response :success
  end

  test "should create encounter" do
    assert_difference("Encounter.count") do
      post encounters_url, params: { encounter: { changed_by: @encounter.changed_by, creator: @encounter.creator, date_changed: @encounter.date_changed, date_created: @encounter.date_created, date_voided: @encounter.date_voided, encounter_datetime: @encounter.encounter_datetime, encounter_id: @encounter.encounter_id, encounter_type: @encounter.encounter_type, form_id: @encounter.form_id, location_id: @encounter.location_id, patient_id: @encounter.patient_id, program_id: @encounter.program_id, provider_id: @encounter.provider_id, site_id: @encounter.site_id, uuid: @encounter.uuid, void_reason: @encounter.void_reason, voided: @encounter.voided, voided_by: @encounter.voided_by } }, as: :json
    end

    assert_response :created
  end

  test "should show encounter" do
    get encounter_url(@encounter), as: :json
    assert_response :success
  end

  test "should update encounter" do
    patch encounter_url(@encounter), params: { encounter: { changed_by: @encounter.changed_by, creator: @encounter.creator, date_changed: @encounter.date_changed, date_created: @encounter.date_created, date_voided: @encounter.date_voided, encounter_datetime: @encounter.encounter_datetime, encounter_id: @encounter.encounter_id, encounter_type: @encounter.encounter_type, form_id: @encounter.form_id, location_id: @encounter.location_id, patient_id: @encounter.patient_id, program_id: @encounter.program_id, provider_id: @encounter.provider_id, site_id: @encounter.site_id, uuid: @encounter.uuid, void_reason: @encounter.void_reason, voided: @encounter.voided, voided_by: @encounter.voided_by } }, as: :json
    assert_response :success
  end

  test "should destroy encounter" do
    assert_difference("Encounter.count", -1) do
      delete encounter_url(@encounter), as: :json
    end

    assert_response :no_content
  end
end
