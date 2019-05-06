class CreateEmployeeMasters < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_masters do |t|
      t.string :EmployeeID
      t.string :EmployeeFirstName
      t.string :EmployeeLastName
      t.datetime :EmployeeBday

      t.timestamps
    end
  end
end
