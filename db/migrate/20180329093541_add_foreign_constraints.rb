class AddForeignConstraints < ActiveRecord::Migration[5.0]
  def change
    remove_column :tickets, :plan_id
    add_column :tickets, :position, :integer
    add_column :tickets, :round_id, :integer
    rename_column :tickets, :amount, :prize
    add_foreign_key :tickets, :rounds
    add_foreign_key :plan_rules, :plans
    add_foreign_key :plans, :currencies
    add_foreign_key :rounds, :plans
    drop_table :round_participants
  end
end
