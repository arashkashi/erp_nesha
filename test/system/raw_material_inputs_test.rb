require "application_system_test_case"

class RawMaterialInputsTest < ApplicationSystemTestCase
  setup do
    @raw_material_input = raw_material_inputs(:one)
  end

  test "visiting the index" do
    visit raw_material_inputs_url
    assert_selector "h1", text: "Raw Material Inputs"
  end

  test "creating a Raw material input" do
    visit raw_material_inputs_url
    click_on "New Raw Material Input"

    fill_in "Amount", with: @raw_material_input.amount
    fill_in "Raw material type", with: @raw_material_input.raw_material_type_id
    fill_in "User", with: @raw_material_input.user_id
    click_on "Create Raw material input"

    assert_text "Raw material input was successfully created"
    click_on "Back"
  end

  test "updating a Raw material input" do
    visit raw_material_inputs_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @raw_material_input.amount
    fill_in "Raw material type", with: @raw_material_input.raw_material_type_id
    fill_in "User", with: @raw_material_input.user_id
    click_on "Update Raw material input"

    assert_text "Raw material input was successfully updated"
    click_on "Back"
  end

  test "destroying a Raw material input" do
    visit raw_material_inputs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Raw material input was successfully destroyed"
  end
end
