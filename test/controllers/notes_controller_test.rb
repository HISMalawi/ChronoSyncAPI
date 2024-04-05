require "test_helper"

class NotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @note = notes(:one)
  end

  test "should get index" do
    get notes_url, as: :json
    assert_response :success
  end

  test "should create note" do
    assert_difference("Note.count") do
      post notes_url, params: { note: { changed_by: @note.changed_by, creator: @note.creator, date_changed: @note.date_changed, date_created: @note.date_created, encounter_id: @note.encounter_id, note_type: @note.note_type, obs_id: @note.obs_id, parent: @note.parent, patient_id: @note.patient_id, priority: @note.priority, text: @note.text, uuid: @note.uuid } }, as: :json
    end

    assert_response :created
  end

  test "should show note" do
    get note_url(@note), as: :json
    assert_response :success
  end

  test "should update note" do
    patch note_url(@note), params: { note: { changed_by: @note.changed_by, creator: @note.creator, date_changed: @note.date_changed, date_created: @note.date_created, encounter_id: @note.encounter_id, note_type: @note.note_type, obs_id: @note.obs_id, parent: @note.parent, patient_id: @note.patient_id, priority: @note.priority, text: @note.text, uuid: @note.uuid } }, as: :json
    assert_response :success
  end

  test "should destroy note" do
    assert_difference("Note.count", -1) do
      delete note_url(@note), as: :json
    end

    assert_response :no_content
  end
end
