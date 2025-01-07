class CreateCurrencies < ActiveRecord::Migration[8.0]
  def change
    create_table :currencies do |t|
      t.string :name
      t.string :code
      t.decimal :rate

      t.timestamps
    end
  end
end
