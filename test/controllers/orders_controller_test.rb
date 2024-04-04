require "test_helper"

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url, as: :json
    assert_response :success
  end

  test "should create order" do
    assert_difference("Order.count") do
      post orders_url, params: { order: { accession_number: @order.accession_number, auto_expire_date: @order.auto_expire_date, concept_id: @order.concept_id, creator: @order.creator, date_created: @order.date_created, date_voided: @order.date_voided, discontinued: @order.discontinued, discontinued_by: @order.discontinued_by, discontinued_date: @order.discontinued_date, discontinued_reason: @order.discontinued_reason, discontinued_reason_non_coded: @order.discontinued_reason_non_coded, encounter_id: @order.encounter_id, instructions: @order.instructions, obs_id: @order.obs_id, order_id: @order.order_id, order_type_id: @order.order_type_id, orderer: @order.orderer, patient_id: @order.patient_id, site_id: @order.site_id, start_date: @order.start_date, uuid: @order.uuid, void_reason: @order.void_reason, voided: @order.voided, voided_by: @order.voided_by } }, as: :json
    end

    assert_response :created
  end

  test "should show order" do
    get order_url(@order), as: :json
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { accession_number: @order.accession_number, auto_expire_date: @order.auto_expire_date, concept_id: @order.concept_id, creator: @order.creator, date_created: @order.date_created, date_voided: @order.date_voided, discontinued: @order.discontinued, discontinued_by: @order.discontinued_by, discontinued_date: @order.discontinued_date, discontinued_reason: @order.discontinued_reason, discontinued_reason_non_coded: @order.discontinued_reason_non_coded, encounter_id: @order.encounter_id, instructions: @order.instructions, obs_id: @order.obs_id, order_id: @order.order_id, order_type_id: @order.order_type_id, orderer: @order.orderer, patient_id: @order.patient_id, site_id: @order.site_id, start_date: @order.start_date, uuid: @order.uuid, void_reason: @order.void_reason, voided: @order.voided, voided_by: @order.voided_by } }, as: :json
    assert_response :success
  end

  test "should destroy order" do
    assert_difference("Order.count", -1) do
      delete order_url(@order), as: :json
    end

    assert_response :no_content
  end
end
