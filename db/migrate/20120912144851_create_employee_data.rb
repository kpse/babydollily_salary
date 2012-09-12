class CreateEmployeeData < ActiveRecord::Migration
  def change
    create_table :employee_data do |t|
      t.string :file

      t.timestamps
    end
  end
end
