require "test_helper"

class WasherOutputsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @washer_output = washer_outputs(:one)
  end

  test "should get index" do
    get washer_outputs_url
    assert_response :success
  end

  test "should get new" do
    get new_washer_output_url
    assert_response :success
  end

  test "should create washer_output" do
    assert_difference('WasherOutput.count') do
      post washer_outputs_url, params: { washer_output: { amount: @washer_output.amount, order_id: @washer_output.order_id, user_id: @washer_output.user_id, washer_type_id: @washer_output.washer_type_id } }
    end

    assert_redirected_to washer_output_url(WasherOutput.last)
  end

  test "should show washer_output" do
    get washer_output_url(@washer_output)
    assert_response :success
  end

  test "should get edit" do
    get edit_washer_output_url(@washer_output)
    assert_response :success
  end

  test "should update washer_output" do
    patch washer_output_url(@washer_output), params: { washer_output: { amount: @washer_output.amount, order_id: @washer_output.order_id, user_id: @washer_output.user_id, washer_type_id: @washer_output.washer_type_id } }
    assert_redirected_to washer_output_url(@washer_output)
  end

  test "should destroy washer_output" do
    assert_difference('WasherOutput.count', -1) do
      delete washer_output_url(@washer_output)
    end

    assert_redirected_to washer_outputs_url
  end
end
