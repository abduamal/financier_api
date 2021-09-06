class AccountTransaction < ApplicationRecord
  belongs_to :account
  has_many :account_transactions

  validates :amount, presence: true
  validates_inclusion_of :transaction_type, :in => ['deposit', 'withdraw']
end
