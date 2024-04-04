require "test_helper"

class PersonAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person_address = person_addresses(:one)
  end

  test "should get index" do
    get person_addresses_url, as: :json
    assert_response :success
  end

  test "should create person_address" do
    assert_difference("PersonAddress.count") do
      post person_addresses_url, params: { person_address: { address1: @person_address.address1, address2: @person_address.address2, city_village: @person_address.city_village, country: @person_address.country, county_district: @person_address.county_district, creator: @person_address.creator, date_created: @person_address.date_created, date_voided: @person_address.date_voided, latitude: @person_address.latitude, longitude: @person_address.longitude, neighborhood_cell: @person_address.neighborhood_cell, person_address_id: @person_address.person_address_id, person_id: @person_address.person_id, postal_code: @person_address.postal_code, preferred: @person_address.preferred, region: @person_address.region, site_id: @person_address.site_id, state_province: @person_address.state_province, subregion: @person_address.subregion, township_division: @person_address.township_division, uuid: @person_address.uuid, void_reason: @person_address.void_reason, voided: @person_address.voided, voided_by: @person_address.voided_by } }, as: :json
    end

    assert_response :created
  end

  test "should show person_address" do
    get person_address_url(@person_address), as: :json
    assert_response :success
  end

  test "should update person_address" do
    patch person_address_url(@person_address), params: { person_address: { address1: @person_address.address1, address2: @person_address.address2, city_village: @person_address.city_village, country: @person_address.country, county_district: @person_address.county_district, creator: @person_address.creator, date_created: @person_address.date_created, date_voided: @person_address.date_voided, latitude: @person_address.latitude, longitude: @person_address.longitude, neighborhood_cell: @person_address.neighborhood_cell, person_address_id: @person_address.person_address_id, person_id: @person_address.person_id, postal_code: @person_address.postal_code, preferred: @person_address.preferred, region: @person_address.region, site_id: @person_address.site_id, state_province: @person_address.state_province, subregion: @person_address.subregion, township_division: @person_address.township_division, uuid: @person_address.uuid, void_reason: @person_address.void_reason, voided: @person_address.voided, voided_by: @person_address.voided_by } }, as: :json
    assert_response :success
  end

  test "should destroy person_address" do
    assert_difference("PersonAddress.count", -1) do
      delete person_address_url(@person_address), as: :json
    end

    assert_response :no_content
  end
end
