class Currency < ApplicationRecord
  has_many :balance_items
end
