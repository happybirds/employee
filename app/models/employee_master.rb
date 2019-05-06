class EmployeeMaster < ApplicationRecord
	validates :EmployeeID,presence: true
	validates :EmployeeFirstName,presence: true
	validates :EmployeeLastName,presence: true
	has_many :dtr_masters,class_name: "DtrMaster", foreign_key: "EmployeeMaster_EmployeeID"

end
