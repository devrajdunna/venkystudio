require "application_system_test_case"

class CamerasTest < ApplicationSystemTestCase
  setup do
    @camera = cameras(:one)
  end

  test "visiting the index" do
    visit cameras_url
    assert_selector "h1", text: "Cameras"
  end

  test "creating a Camera" do
    visit cameras_url
    click_on "New Camera"

    fill_in "Address", with: @camera.address
    fill_in "Cameraman", with: @camera.cameraman
    fill_in "Category", with: @camera.category
    fill_in "Emil", with: @camera.emil
    fill_in "Enddate", with: @camera.enddate
    fill_in "First name", with: @camera.first_name
    fill_in "Landmark", with: @camera.landmark
    fill_in "Last name", with: @camera.last_name
    fill_in "Morf", with: @camera.morf
    fill_in "Owner", with: @camera.owner
    fill_in "Phone", with: @camera.phone
    fill_in "Startdate", with: @camera.startdate
    click_on "Create Camera"

    assert_text "Camera was successfully created"
    click_on "Back"
  end

  test "updating a Camera" do
    visit cameras_url
    click_on "Edit", match: :first

    fill_in "Address", with: @camera.address
    fill_in "Cameraman", with: @camera.cameraman
    fill_in "Category", with: @camera.category
    fill_in "Emil", with: @camera.emil
    fill_in "Enddate", with: @camera.enddate
    fill_in "First name", with: @camera.first_name
    fill_in "Landmark", with: @camera.landmark
    fill_in "Last name", with: @camera.last_name
    fill_in "Morf", with: @camera.morf
    fill_in "Owner", with: @camera.owner
    fill_in "Phone", with: @camera.phone
    fill_in "Startdate", with: @camera.startdate
    click_on "Update Camera"

    assert_text "Camera was successfully updated"
    click_on "Back"
  end

  test "destroying a Camera" do
    visit cameras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Camera was successfully destroyed"
  end
end
