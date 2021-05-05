require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "creating a Profile" do
    visit profiles_url
    click_on "New Profile"

    fill_in "Birth", with: @profile.birth
    fill_in "Cell phone", with: @profile.cell_phone
    fill_in "Drivers license", with: @profile.drivers_license
    fill_in "First name", with: @profile.first_name
    check "Gender" if @profile.gender
    fill_in "Home phone", with: @profile.home_phone
    fill_in "Last name", with: @profile.last_name
    fill_in "License", with: @profile.license
    check "Marital status" if @profile.marital_status
    fill_in "Middle name", with: @profile.middle_name
    fill_in "Specialty", with: @profile.specialty_id
    fill_in "User", with: @profile.user_id
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "updating a Profile" do
    visit profiles_url
    click_on "Edit", match: :first

    fill_in "Birth", with: @profile.birth
    fill_in "Cell phone", with: @profile.cell_phone
    fill_in "Drivers license", with: @profile.drivers_license
    fill_in "First name", with: @profile.first_name
    check "Gender" if @profile.gender
    fill_in "Home phone", with: @profile.home_phone
    fill_in "Last name", with: @profile.last_name
    fill_in "License", with: @profile.license
    check "Marital status" if @profile.marital_status
    fill_in "Middle name", with: @profile.middle_name
    fill_in "Specialty", with: @profile.specialty_id
    fill_in "User", with: @profile.user_id
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile" do
    visit profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile was successfully destroyed"
  end
end
