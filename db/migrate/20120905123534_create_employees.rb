class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :number
      t.string :name
      t.string :line_of_business
      t.string :dug
      t.string :du
      t.string :post
      t.string :duty
      t.string :charge_area
      t.string :client_rank

      t.timestamps
    end
  end
end
