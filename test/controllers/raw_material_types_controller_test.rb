require "test_helper"

class RawMaterialTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @raw_material_type = raw_material_types(:one)
  end

  test "should get index" do
    get raw_material_types_url
    assert_response :success
  end

  test "should get new" do
    get new_raw_material_type_url
    assert_response :success
  end

  test "should create raw_material_type" do
    assert_difference('RawMaterialType.count') do
      post raw_material_types_url, params: { raw_material_type: { name: @raw_material_type.name, user_id: @raw_material_type.user_id } }
    end

    assert_redirected_to raw_material_type_url(RawMaterialType.last)
  end

  test "should show raw_material_type" do
    get raw_material_type_url(@raw_material_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_raw_material_type_url(@raw_material_type)
    assert_response :success
  end

  test "should update raw_material_type" do
    patch raw_material_type_url(@raw_material_type), params: { raw_material_type: { name: @raw_material_type.name, user_id: @raw_material_type.user_id } }
    assert_redirected_to raw_material_type_url(@raw_material_type)
  end

  test "should destroy raw_material_type" do
    assert_difference('RawMaterialType.count', -1) do
      delete raw_material_type_url(@raw_material_type)
    end

    assert_redirected_to raw_material_types_url
  end
end
