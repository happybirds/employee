require "application_system_test_case"

class EmployeeMastersTest < ApplicationSystemTestCase
  setup do
    @employee_master = employee_masters(:one)
  end

  test "visiting the index" do
    visit employee_masters_url
    assert_selector "h1", text: "Employee Masters"
  end

  test "creating a Employee master" do
    visit employee_masters_url
    click_on "New Employee Master"

    fill_in "Employeebday", with: @employee_master.EmployeeBday
    fill_in "Employeefirstname", with: @employee_master.EmployeeFirstName
    fill_in "Employeeid", with: @employee_master.EmployeeID
    fill_in "Employeelastname", with: @employee_master.EmployeeLastName
    click_on "Create Employee master"

    assert_text "Employee master was successfully created"
    click_on "Back"
  end

  test "updating a Employee master" do
    visit employee_masters_url
    click_on "Edit", match: :first

    fill_in "Employeebday", with: @employee_master.EmployeeBday
    fill_in "Employeefirstname", with: @employee_master.EmployeeFirstName
    fill_in "Employeeid", with: @employee_master.EmployeeID
    fill_in "Employeelastname", with: @employee_master.EmployeeLastName
    click_on "Update Employee master"

    assert_text "Employee master was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee master" do
    visit employee_masters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee master was successfully destroyed"
  end
end
