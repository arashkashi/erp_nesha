require "test_helper"

class StoresControllerTest < ActionDispatch::IntegrationTest
  test "should get products" do
    get stores_products_url
    assert_response :success
  end

  test "should get raw_materials" do
    get stores_raw_materials_url
    assert_response :success
  end

  test "should get washers" do
    get stores_washers_url
    assert_response :success
  end
end
