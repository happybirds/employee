class DtrMaster < ApplicationRecord
	belongs_to :employee_master,class_name: "EmployeeMaster", foreign_key: "EmployeeMaster_EmployeeID"
end
