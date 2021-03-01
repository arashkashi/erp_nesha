require "test_helper"

class WasherInputsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @washer_input = washer_inputs(:one)
  end

  test "should get index" do
    get washer_inputs_url
    assert_response :success
  end

  test "should get new" do
    get new_washer_input_url
    assert_response :success
  end

  test "should create washer_input" do
    assert_difference('WasherInput.count') do
      post washer_inputs_url, params: { washer_input: { amount: @washer_input.amount, user_id: @washer_input.user_id, washer_type_id: @washer_input.washer_type_id } }
    end

    assert_redirected_to washer_input_url(WasherInput.last)
  end

  test "should show washer_input" do
    get washer_input_url(@washer_input)
    assert_response :success
  end

  test "should get edit" do
    get edit_washer_input_url(@washer_input)
    assert_response :success
  end

  test "should update washer_input" do
    patch washer_input_url(@washer_input), params: { washer_input: { amount: @washer_input.amount, user_id: @washer_input.user_id, washer_type_id: @washer_input.washer_type_id } }
    assert_redirected_to washer_input_url(@washer_input)
  end

  test "should destroy washer_input" do
    assert_difference('WasherInput.count', -1) do
      delete washer_input_url(@washer_input)
    end

    assert_redirected_to washer_inputs_url
  end
end
