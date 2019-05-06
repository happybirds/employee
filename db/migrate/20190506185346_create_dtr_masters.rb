class CreateDtrMasters < ActiveRecord::Migration[5.2]
  def change
    create_table :dtr_masters do |t|
			t.integer :EmployeeMaster_EmployeeID
			t.datetime :DTRDateTime
			t.string :DTRType
      t.timestamps
    end
  end
end
