class CreateBalanceItems < ActiveRecord::Migration[8.0]
  def change
    create_table :balance_items do |t|
      t.references :balance, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.references :creator, null: false, foreign_key: true
      t.references :payer, null: false, foreign_key: true
      t.references :participant, null: false, foreign_key: true
      t.decimal :amount
      t.references :currency, null: false, foreign_key: true

      t.timestamps
    end
  end
end
