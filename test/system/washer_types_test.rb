require "application_system_test_case"

class WasherTypesTest < ApplicationSystemTestCase
  setup do
    @washer_type = washer_types(:one)
  end

  test "visiting the index" do
    visit washer_types_url
    assert_selector "h1", text: "Washer Types"
  end

  test "creating a Washer type" do
    visit washer_types_url
    click_on "New Washer Type"

    fill_in "Name", with: @washer_type.name
    fill_in "User", with: @washer_type.user_id
    click_on "Create Washer type"

    assert_text "Washer type was successfully created"
    click_on "Back"
  end

  test "updating a Washer type" do
    visit washer_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @washer_type.name
    fill_in "User", with: @washer_type.user_id
    click_on "Update Washer type"

    assert_text "Washer type was successfully updated"
    click_on "Back"
  end

  test "destroying a Washer type" do
    visit washer_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Washer type was successfully destroyed"
  end
end
