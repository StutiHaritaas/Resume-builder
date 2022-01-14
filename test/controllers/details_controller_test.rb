require "test_helper"

class DetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detail = details(:one)
  end

  test "should get index" do
    get details_url
    assert_response :success
  end

  test "should get new" do
    get new_detail_url
    assert_response :success
  end

  test "should create detail" do
    assert_difference("Detail.count") do
      post details_url, params: { detail: { Years_Of_Experience: @detail.Years_Of_Experience, company: @detail.company, degree: @detail.degree, desc: @detail.desc, description: @detail.description, end_date: @detail.end_date, grade: @detail.grade, job_title: @detail.job_title, name: @detail.name, position: @detail.position, primary_skiils: @detail.primary_skiils, school_name: @detail.school_name, secondary_skills: @detail.secondary_skills, start_date: @detail.start_date, tech_stack: @detail.tech_stack, title: @detail.title } }
    end

    assert_redirected_to detail_url(Detail.last)
  end

  test "should show detail" do
    get detail_url(@detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_detail_url(@detail)
    assert_response :success
  end

  test "should update detail" do
    patch detail_url(@detail), params: { detail: { Years_Of_Experience: @detail.Years_Of_Experience, company: @detail.company, degree: @detail.degree, desc: @detail.desc, description: @detail.description, end_date: @detail.end_date, grade: @detail.grade, job_title: @detail.job_title, name: @detail.name, position: @detail.position, primary_skiils: @detail.primary_skiils, school_name: @detail.school_name, secondary_skills: @detail.secondary_skills, start_date: @detail.start_date, tech_stack: @detail.tech_stack, title: @detail.title } }
    assert_redirected_to detail_url(@detail)
  end

  test "should destroy detail" do
    assert_difference("Detail.count", -1) do
      delete detail_url(@detail)
    end

    assert_redirected_to details_url
  end
end
