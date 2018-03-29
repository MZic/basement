class AddDefaultToTicketPrize < ActiveRecord::Migration[5.0]
  def change
    change_column :tickets, :prize, :float, default: 0
  end
end
