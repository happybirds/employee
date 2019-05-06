json.extract! employee_master, :id, :EmployeeID, :EmployeeFirstName, :EmployeeLastName, :EmployeeBday, :created_at, :updated_at
json.url employee_master_url(employee_master, format: :json)
