class CreateJoinTableBalanceParticipants < ActiveRecord::Migration[8.0]
  def change
    create_join_table :balances, :users do |t|
      t.index [ :balance_id, :user_id ]
      t.index [ :user_id, :balance_id ]
    end
  end
end
