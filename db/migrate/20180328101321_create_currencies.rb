class CreateCurrencies < ActiveRecord::Migration[5.0]
  def change
    create_table :currencies do |t|
      t.string :full_name
      t.string :short_name
      t.timestamps
    end
  end
end
