class AccountTransaction < ApplicationRecord
  belongs_to :account
  has_many :account_transactions
end
