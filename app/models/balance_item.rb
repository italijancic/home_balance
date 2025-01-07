class BalanceItem < ApplicationRecord
  belongs_to :balance
  belongs_to :category
  belongs_to :creator, class_name: "User"
  belongs_to :payer, class_name: "User"
  belongs_to :participant, class_name: "User"
  belongs_to :currency
end
