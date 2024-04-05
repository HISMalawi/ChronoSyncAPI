require "test_helper"

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get people_url, as: :json
    assert_response :success
  end

  test "should create person" do
    assert_difference("Person.count") do
      post people_url, params: { person: { birthdate: @person.birthdate, birthdate_estimated: @person.birthdate_estimated, cause_of_death: @person.cause_of_death, changed_by: @person.changed_by, creator: @person.creator, date_changed: @person.date_changed, date_created: @person.date_created, date_voided: @person.date_voided, dead: @person.dead, death_date: @person.death_date, gender: @person.gender, person_id: @person.person_id, site_id: @person.site_id, uuid: @person.uuid, void_reason: @person.void_reason, voided: @person.voided, voided_by: @person.voided_by } }, as: :json
    end

    assert_response :created
  end

  test "should show person" do
    get person_url(@person), as: :json
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { birthdate: @person.birthdate, birthdate_estimated: @person.birthdate_estimated, cause_of_death: @person.cause_of_death, changed_by: @person.changed_by, creator: @person.creator, date_changed: @person.date_changed, date_created: @person.date_created, date_voided: @person.date_voided, dead: @person.dead, death_date: @person.death_date, gender: @person.gender, person_id: @person.person_id, site_id: @person.site_id, uuid: @person.uuid, void_reason: @person.void_reason, voided: @person.voided, voided_by: @person.voided_by } }, as: :json
    assert_response :success
  end

  test "should destroy person" do
    assert_difference("Person.count", -1) do
      delete person_url(@person), as: :json
    end

    assert_response :no_content
  end
end
