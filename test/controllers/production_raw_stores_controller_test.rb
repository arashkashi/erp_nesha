require "test_helper"

class ProductionRawStoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @production_raw_store = production_raw_stores(:one)
  end

  test "should get index" do
    get production_raw_stores_url
    assert_response :success
  end

  test "should get new" do
    get new_production_raw_store_url
    assert_response :success
  end

  test "should create production_raw_store" do
    assert_difference('ProductionRawStore.count') do
      post production_raw_stores_url, params: { production_raw_store: { name: @production_raw_store.name, user_id: @production_raw_store.user_id } }
    end

    assert_redirected_to production_raw_store_url(ProductionRawStore.last)
  end

  test "should show production_raw_store" do
    get production_raw_store_url(@production_raw_store)
    assert_response :success
  end

  test "should get edit" do
    get edit_production_raw_store_url(@production_raw_store)
    assert_response :success
  end

  test "should update production_raw_store" do
    patch production_raw_store_url(@production_raw_store), params: { production_raw_store: { name: @production_raw_store.name, user_id: @production_raw_store.user_id } }
    assert_redirected_to production_raw_store_url(@production_raw_store)
  end

  test "should destroy production_raw_store" do
    assert_difference('ProductionRawStore.count', -1) do
      delete production_raw_store_url(@production_raw_store)
    end

    assert_redirected_to production_raw_stores_url
  end
end
