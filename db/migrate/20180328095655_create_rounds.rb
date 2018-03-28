class CreateRounds < ActiveRecord::Migration[5.0]
  def change
    create_table :rounds do |t|
      t.integer :plan_id
      t.string :name
      t.timestamps
    end

    add_index :rounds, :plan_id
  end
end
