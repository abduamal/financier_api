class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :middle_initial, :last_name, :username
  has_many :accounts
end
