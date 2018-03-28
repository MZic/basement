class FixDecimal < ActiveRecord::Migration[5.0]
  def change
    change_column :plans, :ticket_price, :float
    change_column :plan_rules, :prize, :float
    change_column :tickets, :amount, :float
  end
end
