require "application_system_test_case"

class WasherOutputsTest < ApplicationSystemTestCase
  setup do
    @washer_output = washer_outputs(:one)
  end

  test "visiting the index" do
    visit washer_outputs_url
    assert_selector "h1", text: "Washer Outputs"
  end

  test "creating a Washer output" do
    visit washer_outputs_url
    click_on "New Washer Output"

    fill_in "Amount", with: @washer_output.amount
    fill_in "Order", with: @washer_output.order_id
    fill_in "User", with: @washer_output.user_id
    fill_in "Washer type", with: @washer_output.washer_type_id
    click_on "Create Washer output"

    assert_text "Washer output was successfully created"
    click_on "Back"
  end

  test "updating a Washer output" do
    visit washer_outputs_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @washer_output.amount
    fill_in "Order", with: @washer_output.order_id
    fill_in "User", with: @washer_output.user_id
    fill_in "Washer type", with: @washer_output.washer_type_id
    click_on "Update Washer output"

    assert_text "Washer output was successfully updated"
    click_on "Back"
  end

  test "destroying a Washer output" do
    visit washer_outputs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Washer output was successfully destroyed"
  end
end
