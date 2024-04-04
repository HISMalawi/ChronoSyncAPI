require "test_helper"

class PatientProgramsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient_program = patient_programs(:one)
  end

  test "should get index" do
    get patient_programs_url, as: :json
    assert_response :success
  end

  test "should create patient_program" do
    assert_difference("PatientProgram.count") do
      post patient_programs_url, params: { patient_program: { changed_by: @patient_program.changed_by, creator: @patient_program.creator, date_changed: @patient_program.date_changed, date_completed: @patient_program.date_completed, date_created: @patient_program.date_created, date_enrolled: @patient_program.date_enrolled, date_voided: @patient_program.date_voided, location_id: @patient_program.location_id, patient_id: @patient_program.patient_id, patient_program_id: @patient_program.patient_program_id, program_id: @patient_program.program_id, site_id: @patient_program.site_id, uuid: @patient_program.uuid, void_reason: @patient_program.void_reason, voided: @patient_program.voided, voided_by: @patient_program.voided_by } }, as: :json
    end

    assert_response :created
  end

  test "should show patient_program" do
    get patient_program_url(@patient_program), as: :json
    assert_response :success
  end

  test "should update patient_program" do
    patch patient_program_url(@patient_program), params: { patient_program: { changed_by: @patient_program.changed_by, creator: @patient_program.creator, date_changed: @patient_program.date_changed, date_completed: @patient_program.date_completed, date_created: @patient_program.date_created, date_enrolled: @patient_program.date_enrolled, date_voided: @patient_program.date_voided, location_id: @patient_program.location_id, patient_id: @patient_program.patient_id, patient_program_id: @patient_program.patient_program_id, program_id: @patient_program.program_id, site_id: @patient_program.site_id, uuid: @patient_program.uuid, void_reason: @patient_program.void_reason, voided: @patient_program.voided, voided_by: @patient_program.voided_by } }, as: :json
    assert_response :success
  end

  test "should destroy patient_program" do
    assert_difference("PatientProgram.count", -1) do
      delete patient_program_url(@patient_program), as: :json
    end

    assert_response :no_content
  end
end
