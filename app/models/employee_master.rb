class EmployeeMaster < ApplicationRecord
	has_many :dtr_masters,class_name: "DtrMaster", foreign_key: "EmployeeMaster_EmployeeID"

end
