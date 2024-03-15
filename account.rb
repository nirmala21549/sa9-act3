class Account
    attr_reader :account_number, :balance
  
    def initialize(account_number, balance)
      @account_number = account_number
      @balance = balance
    end
  
    def deposit(amount)
      @balance += amount
    end
  
    def withdraw(amount)
      if amount <= @balance
        @balance -= amount
      else
        puts "Insufficient funds"
      end
    end
  end