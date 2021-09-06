class AccountTransactionSerializer < ActiveModel::Serializer
  attributes :id, :account_id, :amount, :transaction_type, :description
end
