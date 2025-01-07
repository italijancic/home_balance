class CreateBalances < ActiveRecord::Migration[8.0]
  def change
    create_table :balances do |t|
      t.references :creator, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.datetime :creation_date

      t.timestamps
    end
  end
end
