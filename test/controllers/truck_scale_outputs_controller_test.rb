require "test_helper"

class TruckScaleOutputsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @truck_scale_output = truck_scale_outputs(:one)
  end

  test "should get index" do
    get truck_scale_outputs_url
    assert_response :success
  end

  test "should get new" do
    get new_truck_scale_output_url
    assert_response :success
  end

  test "should create truck_scale_output" do
    assert_difference('TruckScaleOutput.count') do
      post truck_scale_outputs_url, params: { truck_scale_output: { amount: @truck_scale_output.amount, order_id: @truck_scale_output.order_id, user_id: @truck_scale_output.user_id } }
    end

    assert_redirected_to truck_scale_output_url(TruckScaleOutput.last)
  end

  test "should show truck_scale_output" do
    get truck_scale_output_url(@truck_scale_output)
    assert_response :success
  end

  test "should get edit" do
    get edit_truck_scale_output_url(@truck_scale_output)
    assert_response :success
  end

  test "should update truck_scale_output" do
    patch truck_scale_output_url(@truck_scale_output), params: { truck_scale_output: { amount: @truck_scale_output.amount, order_id: @truck_scale_output.order_id, user_id: @truck_scale_output.user_id } }
    assert_redirected_to truck_scale_output_url(@truck_scale_output)
  end

  test "should destroy truck_scale_output" do
    assert_difference('TruckScaleOutput.count', -1) do
      delete truck_scale_output_url(@truck_scale_output)
    end

    assert_redirected_to truck_scale_outputs_url
  end
end
