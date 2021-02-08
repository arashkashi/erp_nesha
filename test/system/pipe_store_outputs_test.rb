require "application_system_test_case"

class PipeStoreOutputsTest < ApplicationSystemTestCase
  setup do
    @pipe_store_output = pipe_store_outputs(:one)
  end

  test "visiting the index" do
    visit pipe_store_outputs_url
    assert_selector "h1", text: "Pipe Store Outputs"
  end

  test "creating a Pipe store output" do
    visit pipe_store_outputs_url
    click_on "New Pipe Store Output"

    fill_in "Amount", with: @pipe_store_output.amount
    fill_in "Pipe type", with: @pipe_store_output.pipe_type_id
    fill_in "User", with: @pipe_store_output.user_id
    click_on "Create Pipe store output"

    assert_text "Pipe store output was successfully created"
    click_on "Back"
  end

  test "updating a Pipe store output" do
    visit pipe_store_outputs_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @pipe_store_output.amount
    fill_in "Pipe type", with: @pipe_store_output.pipe_type_id
    fill_in "User", with: @pipe_store_output.user_id
    click_on "Update Pipe store output"

    assert_text "Pipe store output was successfully updated"
    click_on "Back"
  end

  test "destroying a Pipe store output" do
    visit pipe_store_outputs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pipe store output was successfully destroyed"
  end
end
