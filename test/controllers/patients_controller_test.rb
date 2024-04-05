require "test_helper"

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get patients_url, as: :json
    assert_response :success
  end

  test "should create patient" do
    assert_difference("Patient.count") do
      post patients_url, params: { patient: { changed_by: @patient.changed_by, creator: @patient.creator, date_changed: @patient.date_changed, date_created: @patient.date_created, date_voided: @patient.date_voided, patient_id: @patient.patient_id, site_id: @patient.site_id, tribe: @patient.tribe, void_reason: @patient.void_reason, voided: @patient.voided, voided_by: @patient.voided_by } }, as: :json
    end

    assert_response :created
  end

  test "should show patient" do
    get patient_url(@patient), as: :json
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), params: { patient: { changed_by: @patient.changed_by, creator: @patient.creator, date_changed: @patient.date_changed, date_created: @patient.date_created, date_voided: @patient.date_voided, patient_id: @patient.patient_id, site_id: @patient.site_id, tribe: @patient.tribe, void_reason: @patient.void_reason, voided: @patient.voided, voided_by: @patient.voided_by } }, as: :json
    assert_response :success
  end

  test "should destroy patient" do
    assert_difference("Patient.count", -1) do
      delete patient_url(@patient), as: :json
    end

    assert_response :no_content
  end
end
