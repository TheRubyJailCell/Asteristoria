require 'test_helper'

class ConstellationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @constellation = constellations(:one)
  end

  test "should get index" do
    get constellations_url
    assert_response :success
  end

  test "should get new" do
    get new_constellation_url
    assert_response :success
  end

  test "should create constellation" do
    assert_difference('Constellation.count') do
      post constellations_url, params: { constellation: { discovery_date: @constellation.discovery_date, image: @constellation.image, myth: @constellation.myth, name: @constellation.name, number_of_stars: @constellation.number_of_stars, scientific_name: @constellation.scientific_name, season_of_sight: @constellation.season_of_sight } }
    end

    assert_redirected_to constellation_url(Constellation.last)
  end

  test "should show constellation" do
    get constellation_url(@constellation)
    assert_response :success
  end

  test "should get edit" do
    get edit_constellation_url(@constellation)
    assert_response :success
  end

  test "should update constellation" do
    patch constellation_url(@constellation), params: { constellation: { discovery_date: @constellation.discovery_date, image: @constellation.image, myth: @constellation.myth, name: @constellation.name, number_of_stars: @constellation.number_of_stars, scientific_name: @constellation.scientific_name, season_of_sight: @constellation.season_of_sight } }
    assert_redirected_to constellation_url(@constellation)
  end

  test "should destroy constellation" do
    assert_difference('Constellation.count', -1) do
      delete constellation_url(@constellation)
    end

    assert_redirected_to constellations_url
  end
end
