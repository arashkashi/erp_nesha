require "application_system_test_case"

class PipeTypesTest < ApplicationSystemTestCase
  setup do
    @pipe_type = pipe_types(:one)
  end

  test "visiting the index" do
    visit pipe_types_url
    assert_selector "h1", text: "Pipe Types"
  end

  test "creating a Pipe type" do
    visit pipe_types_url
    click_on "New Pipe Type"

    fill_in "Name", with: @pipe_type.name
    fill_in "User", with: @pipe_type.user_id
    fill_in "Weight", with: @pipe_type.weight
    click_on "Create Pipe type"

    assert_text "Pipe type was successfully created"
    click_on "Back"
  end

  test "updating a Pipe type" do
    visit pipe_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @pipe_type.name
    fill_in "User", with: @pipe_type.user_id
    fill_in "Weight", with: @pipe_type.weight
    click_on "Update Pipe type"

    assert_text "Pipe type was successfully updated"
    click_on "Back"
  end

  test "destroying a Pipe type" do
    visit pipe_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pipe type was successfully destroyed"
  end
end
