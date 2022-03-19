module Accounting
  module Accounts
    class << self
      def find_account(referenz)
        Debtors::DebtorsService.known_debtor?(referenz)
      end
    end
  end
end
