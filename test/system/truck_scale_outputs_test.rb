require "application_system_test_case"

class TruckScaleOutputsTest < ApplicationSystemTestCase
  setup do
    @truck_scale_output = truck_scale_outputs(:one)
  end

  test "visiting the index" do
    visit truck_scale_outputs_url
    assert_selector "h1", text: "Truck Scale Outputs"
  end

  test "creating a Truck scale output" do
    visit truck_scale_outputs_url
    click_on "New Truck Scale Output"

    fill_in "Amount", with: @truck_scale_output.amount
    fill_in "Order", with: @truck_scale_output.order_id
    fill_in "User", with: @truck_scale_output.user_id
    click_on "Create Truck scale output"

    assert_text "Truck scale output was successfully created"
    click_on "Back"
  end

  test "updating a Truck scale output" do
    visit truck_scale_outputs_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @truck_scale_output.amount
    fill_in "Order", with: @truck_scale_output.order_id
    fill_in "User", with: @truck_scale_output.user_id
    click_on "Update Truck scale output"

    assert_text "Truck scale output was successfully updated"
    click_on "Back"
  end

  test "destroying a Truck scale output" do
    visit truck_scale_outputs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Truck scale output was successfully destroyed"
  end
end
