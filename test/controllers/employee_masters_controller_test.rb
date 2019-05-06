require 'test_helper'

class EmployeeMastersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_master = employee_masters(:one)
  end

  test "should get index" do
    get employee_masters_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_master_url
    assert_response :success
  end

  test "should create employee_master" do
    assert_difference('EmployeeMaster.count') do
      post employee_masters_url, params: { employee_master: { EmployeeBday: @employee_master.EmployeeBday, EmployeeFirstName: @employee_master.EmployeeFirstName, EmployeeID: @employee_master.EmployeeID, EmployeeLastName: @employee_master.EmployeeLastName } }
    end

    assert_redirected_to employee_master_url(EmployeeMaster.last)
  end

  test "should show employee_master" do
    get employee_master_url(@employee_master)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_master_url(@employee_master)
    assert_response :success
  end

  test "should update employee_master" do
    patch employee_master_url(@employee_master), params: { employee_master: { EmployeeBday: @employee_master.EmployeeBday, EmployeeFirstName: @employee_master.EmployeeFirstName, EmployeeID: @employee_master.EmployeeID, EmployeeLastName: @employee_master.EmployeeLastName } }
    assert_redirected_to employee_master_url(@employee_master)
  end

  test "should destroy employee_master" do
    assert_difference('EmployeeMaster.count', -1) do
      delete employee_master_url(@employee_master)
    end

    assert_redirected_to employee_masters_url
  end
end
