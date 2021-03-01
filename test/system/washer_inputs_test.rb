require "application_system_test_case"

class WasherInputsTest < ApplicationSystemTestCase
  setup do
    @washer_input = washer_inputs(:one)
  end

  test "visiting the index" do
    visit washer_inputs_url
    assert_selector "h1", text: "Washer Inputs"
  end

  test "creating a Washer input" do
    visit washer_inputs_url
    click_on "New Washer Input"

    fill_in "Amount", with: @washer_input.amount
    fill_in "User", with: @washer_input.user_id
    fill_in "Washer type", with: @washer_input.washer_type_id
    click_on "Create Washer input"

    assert_text "Washer input was successfully created"
    click_on "Back"
  end

  test "updating a Washer input" do
    visit washer_inputs_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @washer_input.amount
    fill_in "User", with: @washer_input.user_id
    fill_in "Washer type", with: @washer_input.washer_type_id
    click_on "Update Washer input"

    assert_text "Washer input was successfully updated"
    click_on "Back"
  end

  test "destroying a Washer input" do
    visit washer_inputs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Washer input was successfully destroyed"
  end
end
