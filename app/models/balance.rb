class Balance < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  has_many :balance_items, dependent: :destroy
  has_and_belongs_to_many :participants,
                          class_name: "User",
                          join_table: "balances_users"

  validates :name, presence: true
  validates :creator, presence: true
end
