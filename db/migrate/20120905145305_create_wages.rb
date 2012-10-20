class CreateWages < ActiveRecord::Migration
  def change
    create_table :wages do |t|
      t.integer :employee_id
      t.decimal :basic, default: 0
      t.decimal :post, default: 0
      t.decimal :compensation, default: 0
      t.decimal :seniority_allowance, default: 0
      t.decimal :communication_allowance, default: 0
      t.decimal :accommodation_allowance, default: 0
      t.decimal :transportation_allowance, default: 0
      t.decimal :monthly_wages_standard, default: 0
      t.decimal :travel_allowance, default: 0
      t.decimal :monthly_total, default: 0

      t.timestamps
    end
  end
end
