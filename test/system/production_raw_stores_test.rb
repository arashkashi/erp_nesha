require "application_system_test_case"

class ProductionRawStoresTest < ApplicationSystemTestCase
  setup do
    @production_raw_store = production_raw_stores(:one)
  end

  test "visiting the index" do
    visit production_raw_stores_url
    assert_selector "h1", text: "Production Raw Stores"
  end

  test "creating a Production raw store" do
    visit production_raw_stores_url
    click_on "New Production Raw Store"

    fill_in "Name", with: @production_raw_store.name
    fill_in "User", with: @production_raw_store.user_id
    click_on "Create Production raw store"

    assert_text "Production raw store was successfully created"
    click_on "Back"
  end

  test "updating a Production raw store" do
    visit production_raw_stores_url
    click_on "Edit", match: :first

    fill_in "Name", with: @production_raw_store.name
    fill_in "User", with: @production_raw_store.user_id
    click_on "Update Production raw store"

    assert_text "Production raw store was successfully updated"
    click_on "Back"
  end

  test "destroying a Production raw store" do
    visit production_raw_stores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Production raw store was successfully destroyed"
  end
end
