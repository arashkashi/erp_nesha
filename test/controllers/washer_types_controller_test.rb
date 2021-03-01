require "test_helper"

class WasherTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @washer_type = washer_types(:one)
  end

  test "should get index" do
    get washer_types_url
    assert_response :success
  end

  test "should get new" do
    get new_washer_type_url
    assert_response :success
  end

  test "should create washer_type" do
    assert_difference('WasherType.count') do
      post washer_types_url, params: { washer_type: { name: @washer_type.name, user_id: @washer_type.user_id } }
    end

    assert_redirected_to washer_type_url(WasherType.last)
  end

  test "should show washer_type" do
    get washer_type_url(@washer_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_washer_type_url(@washer_type)
    assert_response :success
  end

  test "should update washer_type" do
    patch washer_type_url(@washer_type), params: { washer_type: { name: @washer_type.name, user_id: @washer_type.user_id } }
    assert_redirected_to washer_type_url(@washer_type)
  end

  test "should destroy washer_type" do
    assert_difference('WasherType.count', -1) do
      delete washer_type_url(@washer_type)
    end

    assert_redirected_to washer_types_url
  end
end
