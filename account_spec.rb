require_relative 'account'

RSpec.describe Account do
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      account = Account.new("12345", 100)
      account.deposit(50)
      expect(account.balance).to eq(150)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      account = Account.new("12345", 100)
      account.withdraw(50)
      expect(account.balance).to eq(50)
    end

    it "does not change the balance if insufficient funds" do
      account = Account.new("12345", 100)
      account.withdraw(150)
      expect(account.balance).to eq(100)
    end
  end
end