require "test_helper"

class PipeStoreInputsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pipe_store_input = pipe_store_inputs(:one)
  end

  test "should get index" do
    get pipe_store_inputs_url
    assert_response :success
  end

  test "should get new" do
    get new_pipe_store_input_url
    assert_response :success
  end

  test "should create pipe_store_input" do
    assert_difference('PipeStoreInput.count') do
      post pipe_store_inputs_url, params: { pipe_store_input: { amount: @pipe_store_input.amount, pipe_type_id: @pipe_store_input.pipe_type_id, user_id: @pipe_store_input.user_id } }
    end

    assert_redirected_to pipe_store_input_url(PipeStoreInput.last)
  end

  test "should show pipe_store_input" do
    get pipe_store_input_url(@pipe_store_input)
    assert_response :success
  end

  test "should get edit" do
    get edit_pipe_store_input_url(@pipe_store_input)
    assert_response :success
  end

  test "should update pipe_store_input" do
    patch pipe_store_input_url(@pipe_store_input), params: { pipe_store_input: { amount: @pipe_store_input.amount, pipe_type_id: @pipe_store_input.pipe_type_id, user_id: @pipe_store_input.user_id } }
    assert_redirected_to pipe_store_input_url(@pipe_store_input)
  end

  test "should destroy pipe_store_input" do
    assert_difference('PipeStoreInput.count', -1) do
      delete pipe_store_input_url(@pipe_store_input)
    end

    assert_redirected_to pipe_store_inputs_url
  end
end
