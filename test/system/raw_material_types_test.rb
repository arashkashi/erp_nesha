require "application_system_test_case"

class RawMaterialTypesTest < ApplicationSystemTestCase
  setup do
    @raw_material_type = raw_material_types(:one)
  end

  test "visiting the index" do
    visit raw_material_types_url
    assert_selector "h1", text: "Raw Material Types"
  end

  test "creating a Raw material type" do
    visit raw_material_types_url
    click_on "New Raw Material Type"

    fill_in "Name", with: @raw_material_type.name
    fill_in "User", with: @raw_material_type.user_id
    click_on "Create Raw material type"

    assert_text "Raw material type was successfully created"
    click_on "Back"
  end

  test "updating a Raw material type" do
    visit raw_material_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @raw_material_type.name
    fill_in "User", with: @raw_material_type.user_id
    click_on "Update Raw material type"

    assert_text "Raw material type was successfully updated"
    click_on "Back"
  end

  test "destroying a Raw material type" do
    visit raw_material_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Raw material type was successfully destroyed"
  end
end
