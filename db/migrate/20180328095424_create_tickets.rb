class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.string  :number
      t.decimal :amount
      t.integer :plan_id
      t.string  :transaction_id
      t.timestamps
    end

    add_index :tickets, :number
    add_index :tickets, :plan_id
    add_index :tickets, :transaction_id
  end
end
