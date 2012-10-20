class CreateAdjustments < ActiveRecord::Migration
  def change
    create_table :adjustments do |t|
      t.integer :employee_id
      t.decimal :jan, default: 0
      t.decimal :feb, default: 0
      t.decimal :mar, default: 0
      t.decimal :apr, default: 0
      t.decimal :may, default: 0
      t.decimal :jun, default: 0
      t.decimal :jul, default: 0
      t.decimal :aug, default: 0
      t.decimal :sep, default: 0
      t.decimal :oct, default: 0
      t.decimal :nov, default: 0
      t.decimal :dec, default: 0

      t.timestamps
    end
  end
end
