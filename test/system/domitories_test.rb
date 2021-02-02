require "application_system_test_case"

class DomitoriesTest < ApplicationSystemTestCase
  setup do
    @domitory = domitories(:one)
  end

  test "visiting the index" do
    visit domitories_url
    assert_selector "h1", text: "Domitories"
  end

  test "creating a Domitory" do
    visit domitories_url
    click_on "New Domitory"

    fill_in "Description", with: @domitory.description
    fill_in "Title", with: @domitory.title
    click_on "Create Domitory"

    assert_text "Domitory was successfully created"
    click_on "Back"
  end

  test "updating a Domitory" do
    visit domitories_url
    click_on "Edit", match: :first

    fill_in "Description", with: @domitory.description
    fill_in "Title", with: @domitory.title
    click_on "Update Domitory"

    assert_text "Domitory was successfully updated"
    click_on "Back"
  end

  test "destroying a Domitory" do
    visit domitories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Domitory was successfully destroyed"
  end
end
