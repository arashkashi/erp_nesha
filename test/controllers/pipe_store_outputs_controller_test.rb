require "test_helper"

class PipeStoreOutputsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pipe_store_output = pipe_store_outputs(:one)
  end

  test "should get index" do
    get pipe_store_outputs_url
    assert_response :success
  end

  test "should get new" do
    get new_pipe_store_output_url
    assert_response :success
  end

  test "should create pipe_store_output" do
    assert_difference('PipeStoreOutput.count') do
      post pipe_store_outputs_url, params: { pipe_store_output: { amount: @pipe_store_output.amount, pipe_type_id: @pipe_store_output.pipe_type_id, user_id: @pipe_store_output.user_id } }
    end

    assert_redirected_to pipe_store_output_url(PipeStoreOutput.last)
  end

  test "should show pipe_store_output" do
    get pipe_store_output_url(@pipe_store_output)
    assert_response :success
  end

  test "should get edit" do
    get edit_pipe_store_output_url(@pipe_store_output)
    assert_response :success
  end

  test "should update pipe_store_output" do
    patch pipe_store_output_url(@pipe_store_output), params: { pipe_store_output: { amount: @pipe_store_output.amount, pipe_type_id: @pipe_store_output.pipe_type_id, user_id: @pipe_store_output.user_id } }
    assert_redirected_to pipe_store_output_url(@pipe_store_output)
  end

  test "should destroy pipe_store_output" do
    assert_difference('PipeStoreOutput.count', -1) do
      delete pipe_store_output_url(@pipe_store_output)
    end

    assert_redirected_to pipe_store_outputs_url
  end
end
