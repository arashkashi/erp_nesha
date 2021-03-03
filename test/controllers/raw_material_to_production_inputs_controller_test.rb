require "test_helper"

class RawMaterialToProductionInputsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @raw_material_to_production_input = raw_material_to_production_inputs(:one)
  end

  test "should get index" do
    get raw_material_to_production_inputs_url
    assert_response :success
  end

  test "should get new" do
    get new_raw_material_to_production_input_url
    assert_response :success
  end

  test "should create raw_material_to_production_input" do
    assert_difference('RawMaterialToProductionInput.count') do
      post raw_material_to_production_inputs_url, params: { raw_material_to_production_input: { amount: @raw_material_to_production_input.amount, raw_material_type_id: @raw_material_to_production_input.raw_material_type_id, user_id: @raw_material_to_production_input.user_id } }
    end

    assert_redirected_to raw_material_to_production_input_url(RawMaterialToProductionInput.last)
  end

  test "should show raw_material_to_production_input" do
    get raw_material_to_production_input_url(@raw_material_to_production_input)
    assert_response :success
  end

  test "should get edit" do
    get edit_raw_material_to_production_input_url(@raw_material_to_production_input)
    assert_response :success
  end

  test "should update raw_material_to_production_input" do
    patch raw_material_to_production_input_url(@raw_material_to_production_input), params: { raw_material_to_production_input: { amount: @raw_material_to_production_input.amount, raw_material_type_id: @raw_material_to_production_input.raw_material_type_id, user_id: @raw_material_to_production_input.user_id } }
    assert_redirected_to raw_material_to_production_input_url(@raw_material_to_production_input)
  end

  test "should destroy raw_material_to_production_input" do
    assert_difference('RawMaterialToProductionInput.count', -1) do
      delete raw_material_to_production_input_url(@raw_material_to_production_input)
    end

    assert_redirected_to raw_material_to_production_inputs_url
  end
end
