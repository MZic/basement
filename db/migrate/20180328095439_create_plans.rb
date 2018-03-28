class CreatePlans < ActiveRecord::Migration[5.0]
  def change
    create_table :plans do |t|
      t.string  :name
      t.integer :currency_id
      t.integer :ticket_price
      t.integer :participant_threshold
      t.timestamps
    end

    add_index :plans, :currency_id
  end
end
