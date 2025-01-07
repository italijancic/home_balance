class User < ApplicationRecord
  has_secure_password

  has_many :created_balances, class_name: "Balance", foreign_key: "creator_id"
  has_many :balance_items_as_creator, class_name: "BalanceItem", foreign_key: "creator_id"
  has_many :balance_items_as_payer, class_name: "BalanceItem", foreign_key: "payer_id"
  has_and_belongs_to_many :participated_balances, class_name: "Balance"
  has_many :balance_items_as_participant, class_name: "BalanceItem", foreign_key: "participant_id"

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :first_name, :last_name, presence: true
end
