class AccountSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :balance
  has_many :account_transactions
end
