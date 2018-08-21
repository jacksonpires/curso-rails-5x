require "application_system_test_case"

class MiningTypesTest < ApplicationSystemTestCase
  setup do
    @mining_type = mining_types(:one)
  end

  test "visiting the index" do
    visit mining_types_url
    assert_selector "h1", text: "Mining Types"
  end

  test "creating a Mining type" do
    visit mining_types_url
    click_on "New Mining Type"

    fill_in "Acronym", with: @mining_type.acronym
    fill_in "Name", with: @mining_type.name
    click_on "Create Mining type"

    assert_text "Mining type was successfully created"
    click_on "Back"
  end

  test "updating a Mining type" do
    visit mining_types_url
    click_on "Edit", match: :first

    fill_in "Acronym", with: @mining_type.acronym
    fill_in "Name", with: @mining_type.name
    click_on "Update Mining type"

    assert_text "Mining type was successfully updated"
    click_on "Back"
  end

  test "destroying a Mining type" do
    visit mining_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mining type was successfully destroyed"
  end
end
