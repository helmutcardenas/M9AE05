require "application_system_test_case"

class ReferencesTest < ApplicationSystemTestCase
  setup do
    @reference = references(:one)
  end

  test "visiting the index" do
    visit references_url
    assert_selector "h1", text: "References"
  end

  test "should create reference" do
    visit references_url
    click_on "New reference"

    fill_in "Description", with: @reference.description
    fill_in "Title", with: @reference.title
    click_on "Create Reference"

    assert_text "Reference was successfully created"
    click_on "Back"
  end

  test "should update Reference" do
    visit reference_url(@reference)
    click_on "Edit this reference", match: :first

    fill_in "Description", with: @reference.description
    fill_in "Title", with: @reference.title
    click_on "Update Reference"

    assert_text "Reference was successfully updated"
    click_on "Back"
  end

  test "should destroy Reference" do
    visit reference_url(@reference)
    click_on "Destroy this reference", match: :first

    assert_text "Reference was successfully destroyed"
  end
end
