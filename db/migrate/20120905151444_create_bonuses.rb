class CreateBonuses < ActiveRecord::Migration
  def change
    create_table :bonuses do |t|
      t.integer :employee_id
      t.decimal :project
      t.decimal :annual
      t.decimal :granted_at
      t.string :sponsor

      t.timestamps
    end
  end
end
