require "test_helper"

class PipeTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pipe_type = pipe_types(:one)
  end

  test "should get index" do
    get pipe_types_url
    assert_response :success
  end

  test "should get new" do
    get new_pipe_type_url
    assert_response :success
  end

  test "should create pipe_type" do
    assert_difference('PipeType.count') do
      post pipe_types_url, params: { pipe_type: { name: @pipe_type.name, user_id: @pipe_type.user_id, weight: @pipe_type.weight } }
    end

    assert_redirected_to pipe_type_url(PipeType.last)
  end

  test "should show pipe_type" do
    get pipe_type_url(@pipe_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_pipe_type_url(@pipe_type)
    assert_response :success
  end

  test "should update pipe_type" do
    patch pipe_type_url(@pipe_type), params: { pipe_type: { name: @pipe_type.name, user_id: @pipe_type.user_id, weight: @pipe_type.weight } }
    assert_redirected_to pipe_type_url(@pipe_type)
  end

  test "should destroy pipe_type" do
    assert_difference('PipeType.count', -1) do
      delete pipe_type_url(@pipe_type)
    end

    assert_redirected_to pipe_types_url
  end
end
