require_relative 'bank'
require_relative 'account'

RSpec.describe Bank do
  describe "#add_account" do
    it "adds an account to the bank" do
      bank = Bank.new
      account = Account.new("12345", 100)
      bank.add_account(account)
      expect(bank.get_account_balance("12345")).to eq(100)
    end
  end
end