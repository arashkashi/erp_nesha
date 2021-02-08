require "application_system_test_case"

class PipeStoreInputsTest < ApplicationSystemTestCase
  setup do
    @pipe_store_input = pipe_store_inputs(:one)
  end

  test "visiting the index" do
    visit pipe_store_inputs_url
    assert_selector "h1", text: "Pipe Store Inputs"
  end

  test "creating a Pipe store input" do
    visit pipe_store_inputs_url
    click_on "New Pipe Store Input"

    fill_in "Amount", with: @pipe_store_input.amount
    fill_in "Pipe type", with: @pipe_store_input.pipe_type_id
    fill_in "User", with: @pipe_store_input.user_id
    click_on "Create Pipe store input"

    assert_text "Pipe store input was successfully created"
    click_on "Back"
  end

  test "updating a Pipe store input" do
    visit pipe_store_inputs_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @pipe_store_input.amount
    fill_in "Pipe type", with: @pipe_store_input.pipe_type_id
    fill_in "User", with: @pipe_store_input.user_id
    click_on "Update Pipe store input"

    assert_text "Pipe store input was successfully updated"
    click_on "Back"
  end

  test "destroying a Pipe store input" do
    visit pipe_store_inputs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pipe store input was successfully destroyed"
  end
end
