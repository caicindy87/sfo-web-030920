# create the following methods that work on all_banks:

# balance - takes in user_id and returns that customer's balance
# customer_name - takes in user_id and returns that customer's name
# withdraw - takes in user_id and amount to deposit and returns that customer's new balance
# highest_balance
require 'pry'

accounts = [
  {"user_id": 1, "user_name": 'Michelle', "balance": 10},
  {"user_id": 2, "user_name": 'Marcus', "balance": 3000},
  {"user_id": 3, "user_name": 'Meredith', "balance": 185},
  {"user_id": 4, "user_name": 'Meredith', "balance": 185000},
]

def balance(user_id, all_accounts)
  all_accounts.each do |acc|
    return acc[:balance] if acc[:user_id] == user_id
  end
end

def customer_name(user_id, all_accounts)
  all_accounts.each do |acc|
    return acc[:user_name] if acc[:user_id] == user_id
  end
end

def deposit(user_id)

end

binding.pry
puts "hellojello"




