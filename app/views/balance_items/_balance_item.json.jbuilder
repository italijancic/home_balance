json.extract! balance_item, :id, :balance_id, :category_id, :creator_id, :payer_id, :participant_id, :amount, :currency_id, :created_at, :updated_at
json.url balance_item_url(balance_item, format: :json)
