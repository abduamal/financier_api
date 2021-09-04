Account.destroy_all
print "Accounts have been reset." if Account.count == 0

# User.destroy_all
# puts "Users have been reset." if User.count == 0
#
# User.create!(
#     first_name: "Amal",
#     middle_initial: "G",
#     last_name: "Abdu",
#     email: "amal@email.com",
#     password: "12345678",
#     username: "amalgabdu"
# )
#
# User.create!(
#     first_name: "Njeshe",
#     middle_initial: "B",
#     last_name: "Ichi",
#     email: "ichi@email.com",
#     password: "12345678",
#     username: "bbbarci"
# )
#
# puts "#{User.count} Users have been created."


Account.create!(
  user_id: 2,
  name: "Checking",
  balance: 7000.54
)
Account.create!(
  user_id: 2,
  name: "Savings",
  balance: 35000.00
)
Account.create!(
  user_id: 3,
  name: "Checking",
  balance: 313.37
)
Account.create!(
  user_id: 3,
  name: "Checking",
  balance: 10.00
)
Account.create!(
  user_id: 1,
  name: "Savings",
  balance: 100000000.00
)
print "#{Account.count} have been created."
