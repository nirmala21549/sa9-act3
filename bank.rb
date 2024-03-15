class Bank
    def initialize
      @accounts = {}
    end
  
    def add_account(account)
      @accounts[account.account_number] = account
    end
  
    def get_account_balance(account_number)
      @accounts[account_number]&.balance
    end
  end