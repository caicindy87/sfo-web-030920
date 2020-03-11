require 'pry'

class BankAccount
    attr_accessor :balance, :user_name
    all = []
    def initialize(balance1, user_name1)
        @balance = balance1
        @user_name = user_name1
        @@all << self
    end

    # BankAccount.all
    def self.all
      puts self
      @@all
    end

    def deposit(amount_deposit)
        @balance += amount_deposit
        @balance
    end

    def withdraw(amount_withdraw)
        if @balance - amount_withdraw >= 0
          @balance = @balance - amount_withdraw
        else
          "Transaction Failed."
        end
        
    end
    
    # def balance=(new_balance)
    #   @balance = new_balance
    # end

    # def user_name
    #   @user_name
    # end

    # def user_name=(new_user_name)
    #   @user_name = new_user_name
    # end

end





ed = BankAccount.new(0, "Eduardo")
ty = BankAccount.new(0, "Ty")
ci = BankAccount.new(0, "Cindy")
ti = BankAccount.new(0, "Tisdale")

binding.pry
puts ".."