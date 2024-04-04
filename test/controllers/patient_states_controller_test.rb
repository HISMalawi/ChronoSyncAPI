require "test_helper"

class PatientStatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_state = patient_states(:one)
  end

  test "should get index" do
    get patient_states_url, as: :json
    assert_response :success
  end

  test "should create patient_state" do
    assert_difference("PatientState.count") do
      post patient_states_url, params: { patient_state: { changed_by: @patient_state.changed_by, creator: @patient_state.creator, date_changed: @patient_state.date_changed, date_created: @patient_state.date_created, date_voided: @patient_state.date_voided, end_date: @patient_state.end_date, patient_program_id: @patient_state.patient_program_id, patient_state_id: @patient_state.patient_state_id, site_id: @patient_state.site_id, start_date: @patient_state.start_date, state: @patient_state.state, uuid: @patient_state.uuid, void_reason: @patient_state.void_reason, voided: @patient_state.voided, voided_by: @patient_state.voided_by } }, as: :json
    end

    assert_response :created
  end

  test "should show patient_state" do
    get patient_state_url(@patient_state), as: :json
    assert_response :success
  end

  test "should update patient_state" do
    patch patient_state_url(@patient_state), params: { patient_state: { changed_by: @patient_state.changed_by, creator: @patient_state.creator, date_changed: @patient_state.date_changed, date_created: @patient_state.date_created, date_voided: @patient_state.date_voided, end_date: @patient_state.end_date, patient_program_id: @patient_state.patient_program_id, patient_state_id: @patient_state.patient_state_id, site_id: @patient_state.site_id, start_date: @patient_state.start_date, state: @patient_state.state, uuid: @patient_state.uuid, void_reason: @patient_state.void_reason, voided: @patient_state.voided, voided_by: @patient_state.voided_by } }, as: :json
    assert_response :success
  end

  test "should destroy patient_state" do
    assert_difference("PatientState.count", -1) do
      delete patient_state_url(@patient_state), as: :json
    end

    assert_response :no_content
  end
end
