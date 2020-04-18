require "application_system_test_case"

class WodsTest < ApplicationSystemTestCase
  setup do
    @wod = wods(:one)
  end

  test "visiting the index" do
    visit wods_url
    assert_selector "h1", text: "Wods"
  end

  test "creating a Wod" do
    visit wods_url
    click_on "New Wod"

    fill_in "Description", with: @wod.description
    check "Is main" if @wod.is_main
    fill_in "Notes", with: @wod.notes
    fill_in "Title", with: @wod.title
    fill_in "Week name", with: @wod.week_name
    click_on "Create Wod"

    assert_text "Wod was successfully created"
    click_on "Back"
  end

  test "updating a Wod" do
    visit wods_url
    click_on "Edit", match: :first

    fill_in "Description", with: @wod.description
    check "Is main" if @wod.is_main
    fill_in "Notes", with: @wod.notes
    fill_in "Title", with: @wod.title
    fill_in "Week name", with: @wod.week_name
    click_on "Update Wod"

    assert_text "Wod was successfully updated"
    click_on "Back"
  end

  test "destroying a Wod" do
    visit wods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wod was successfully destroyed"
  end
end
