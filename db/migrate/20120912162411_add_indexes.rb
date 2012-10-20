class AddIndexes < ActiveRecord::Migration
  def up
    add_index :employees, :number, :name=>'number_index'
    add_index :wages, :employee_id, :name=>'wages_employee_index'
    add_index :bonuses, :employee_id, :name=>'bonuses_employee_index'
    add_index :adjustments, :employee_id, :name=>'adjustments_employee_index'
  end

  def down
  end
end
