require "application_system_test_case"

class ConstellationsTest < ApplicationSystemTestCase
  setup do
    @constellation = constellations(:one)
  end

  test "visiting the index" do
    visit constellations_url
    assert_selector "h1", text: "Constellations"
  end

  test "creating a Constellation" do
    visit constellations_url
    click_on "New Constellation"

    fill_in "Discovery date", with: @constellation.discovery_date
    fill_in "Image", with: @constellation.image
    fill_in "Myth", with: @constellation.myth
    fill_in "Name", with: @constellation.name
    fill_in "Number of stars", with: @constellation.number_of_stars
    fill_in "Scientific name", with: @constellation.scientific_name
    fill_in "Season of sight", with: @constellation.season_of_sight
    click_on "Create Constellation"

    assert_text "Constellation was successfully created"
    click_on "Back"
  end

  test "updating a Constellation" do
    visit constellations_url
    click_on "Edit", match: :first

    fill_in "Discovery date", with: @constellation.discovery_date
    fill_in "Image", with: @constellation.image
    fill_in "Myth", with: @constellation.myth
    fill_in "Name", with: @constellation.name
    fill_in "Number of stars", with: @constellation.number_of_stars
    fill_in "Scientific name", with: @constellation.scientific_name
    fill_in "Season of sight", with: @constellation.season_of_sight
    click_on "Update Constellation"

    assert_text "Constellation was successfully updated"
    click_on "Back"
  end

  test "destroying a Constellation" do
    visit constellations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Constellation was successfully destroyed"
  end
end
