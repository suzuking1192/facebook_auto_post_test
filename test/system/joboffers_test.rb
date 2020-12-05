require "application_system_test_case"

class JoboffersTest < ApplicationSystemTestCase
  setup do
    @joboffer = joboffers(:one)
  end

  test "visiting the index" do
    visit joboffers_url
    assert_selector "h1", text: "Joboffers"
  end

  test "creating a Joboffer" do
    visit joboffers_url
    click_on "New Joboffer"

    fill_in "Job description", with: @joboffer.job_description
    fill_in "Job title", with: @joboffer.job_title
    fill_in "Minimum japaneseskill", with: @joboffer.minimum_japaneseskill
    fill_in "Place", with: @joboffer.place
    fill_in "Salary", with: @joboffer.salary
    fill_in "Shift", with: @joboffer.shift
    click_on "Create Joboffer"

    assert_text "Joboffer was successfully created"
    click_on "Back"
  end

  test "updating a Joboffer" do
    visit joboffers_url
    click_on "Edit", match: :first

    fill_in "Job description", with: @joboffer.job_description
    fill_in "Job title", with: @joboffer.job_title
    fill_in "Minimum japaneseskill", with: @joboffer.minimum_japaneseskill
    fill_in "Place", with: @joboffer.place
    fill_in "Salary", with: @joboffer.salary
    fill_in "Shift", with: @joboffer.shift
    click_on "Update Joboffer"

    assert_text "Joboffer was successfully updated"
    click_on "Back"
  end

  test "destroying a Joboffer" do
    visit joboffers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Joboffer was successfully destroyed"
  end
end
