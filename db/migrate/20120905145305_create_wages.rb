class CreateWages < ActiveRecord::Migration
  def change
    create_table :wages do |t|
      t.integer :employee_id
      t.decimal :basic
      t.decimal :post
      t.decimal :compensation
      t.decimal :seniority_allowance
      t.decimal :communication_allowance
      t.decimal :accommodation_allowance
      t.decimal :transportation_allowance
      t.decimal :monthly_wages_standard
      t.decimal :travel_allowance
      t.decimal :monthly_total

      t.timestamps
    end
  end
end
