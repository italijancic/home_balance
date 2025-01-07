class CreateBalances < ActiveRecord::Migration[8.0]
  def change
    create_table :balance_items do |t|
      t.references :balance, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :creator, null: false, foreign_key: { to_table: :users }  # Explicit foreign key to users
      t.references :payer, null: false, foreign_key: { to_table: :users }     # Explicit foreign key to users
      t.references :participant, null: false, foreign_key: { to_table: :users } # Explicit foreign key to users
      t.references :currency, null: false, foreign_key: true
      t.decimal :amount
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false

      t.timestamps
    end
  end
end
