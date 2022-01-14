require "application_system_test_case"

class DetailsTest < ApplicationSystemTestCase
  setup do
    @detail = details(:one)
  end

  test "visiting the index" do
    visit details_url
    assert_selector "h1", text: "Details"
  end

  test "should create detail" do
    visit details_url
    click_on "New detail"

    fill_in "Years of experience", with: @detail.Years_Of_Experience
    fill_in "Company", with: @detail.company
    fill_in "Degree", with: @detail.degree
    fill_in "Desc", with: @detail.desc
    fill_in "Description", with: @detail.description
    fill_in "End date", with: @detail.end_date
    fill_in "Grade", with: @detail.grade
    fill_in "Job title", with: @detail.job_title
    fill_in "Name", with: @detail.name
    fill_in "Position", with: @detail.position
    fill_in "Primary skiils", with: @detail.primary_skiils
    fill_in "School name", with: @detail.school_name
    fill_in "Secondary skills", with: @detail.secondary_skills
    fill_in "Start date", with: @detail.start_date
    fill_in "Tech stack", with: @detail.tech_stack
    fill_in "Title", with: @detail.title
    click_on "Create Detail"

    assert_text "Detail was successfully created"
    click_on "Back"
  end

  test "should update Detail" do
    visit detail_url(@detail)
    click_on "Edit this detail", match: :first

    fill_in "Years of experience", with: @detail.Years_Of_Experience
    fill_in "Company", with: @detail.company
    fill_in "Degree", with: @detail.degree
    fill_in "Desc", with: @detail.desc
    fill_in "Description", with: @detail.description
    fill_in "End date", with: @detail.end_date
    fill_in "Grade", with: @detail.grade
    fill_in "Job title", with: @detail.job_title
    fill_in "Name", with: @detail.name
    fill_in "Position", with: @detail.position
    fill_in "Primary skiils", with: @detail.primary_skiils
    fill_in "School name", with: @detail.school_name
    fill_in "Secondary skills", with: @detail.secondary_skills
    fill_in "Start date", with: @detail.start_date
    fill_in "Tech stack", with: @detail.tech_stack
    fill_in "Title", with: @detail.title
    click_on "Update Detail"

    assert_text "Detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Detail" do
    visit detail_url(@detail)
    click_on "Destroy this detail", match: :first

    assert_text "Detail was successfully destroyed"
  end
end
