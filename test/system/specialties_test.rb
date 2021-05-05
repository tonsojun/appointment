require "application_system_test_case"

class SpecialtiesTest < ApplicationSystemTestCase
  setup do
    @specialty = specialties(:one)
  end

  test "visiting the index" do
    visit specialties_url
    assert_selector "h1", text: "Specialties"
  end

  test "creating a Specialty" do
    visit specialties_url
    click_on "New Specialty"

    fill_in "Name", with: @specialty.name
    click_on "Create Specialty"

    assert_text "Specialty was successfully created"
    click_on "Back"
  end

  test "updating a Specialty" do
    visit specialties_url
    click_on "Edit", match: :first

    fill_in "Name", with: @specialty.name
    click_on "Update Specialty"

    assert_text "Specialty was successfully updated"
    click_on "Back"
  end

  test "destroying a Specialty" do
    visit specialties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Specialty was successfully destroyed"
  end
end
