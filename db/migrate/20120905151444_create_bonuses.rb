class CreateBonuses < ActiveRecord::Migration
  def change
    create_table :bonuses do |t|
      t.integer :employee_id
      t.decimal :project, default: 0
      t.decimal :annual, default: 0
      t.datetime :granted_at
      t.string :sponsor, default: "none"

      t.timestamps
    end
  end
end
