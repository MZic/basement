class CreateRoundParticipants < ActiveRecord::Migration[5.0]
  def change
    create_table :round_participants do |t|
      t.integer :ticket_id
      t.integer :position
      t.integer :prize
      t.timestamps
    end

    add_index :round_participants, :ticket_id
  end
end
