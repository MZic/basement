class CreatePlanRules < ActiveRecord::Migration[5.0]
  def change
    create_table :plan_rules do |t|
      t.integer :plan_id
      t.integer :position
      t.decimal :prize
      t.timestamps
    end

    add_index :plan_rules, :plan_id
  end
end
