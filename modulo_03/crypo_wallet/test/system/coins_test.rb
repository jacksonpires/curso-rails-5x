require "application_system_test_case"

class CoinsTest < ApplicationSystemTestCase
  setup do
    @coin = coins(:one)
  end

  test "visiting the index" do
    visit coins_url
    assert_selector "h1", text: "Coins"
  end

  test "creating a Coin" do
    visit coins_url
    click_on "New Coin"

    fill_in "Acronym", with: @coin.acronym
    fill_in "Description", with: @coin.description
    fill_in "Url Image", with: @coin.url_image
    click_on "Create Coin"

    assert_text "Coin was successfully created"
    click_on "Back"
  end

  test "updating a Coin" do
    visit coins_url
    click_on "Edit", match: :first

    fill_in "Acronym", with: @coin.acronym
    fill_in "Description", with: @coin.description
    fill_in "Url Image", with: @coin.url_image
    click_on "Update Coin"

    assert_text "Coin was successfully updated"
    click_on "Back"
  end

  test "destroying a Coin" do
    visit coins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coin was successfully destroyed"
  end
end
