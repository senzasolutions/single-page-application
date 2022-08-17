require "application_system_test_case"

class EmpsTest < ApplicationSystemTestCase
  setup do
    @emp = emps(:one)
  end

  test "visiting the index" do
    visit emps_url
    assert_selector "h1", text: "Emps"
  end

  test "should create emp" do
    visit emps_url
    click_on "New emp"

    fill_in "Date end", with: @emp.date_end
    fill_in "Date start", with: @emp.date_start
    fill_in "Employer", with: @emp.employer
    click_on "Create Emp"

    assert_text "Emp was successfully created"
    click_on "Back"
  end

  test "should update Emp" do
    visit emp_url(@emp)
    click_on "Edit this emp", match: :first

    fill_in "Date end", with: @emp.date_end
    fill_in "Date start", with: @emp.date_start
    fill_in "Employer", with: @emp.employer
    click_on "Update Emp"

    assert_text "Emp was successfully updated"
    click_on "Back"
  end

  test "should destroy Emp" do
    visit emp_url(@emp)
    click_on "Destroy this emp", match: :first

    assert_text "Emp was successfully destroyed"
  end
end
