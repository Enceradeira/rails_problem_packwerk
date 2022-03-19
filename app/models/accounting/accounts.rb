module Accounting
  module Accounts
    class << self
      def find_account(referenz)
        # following is a dependency violation
        Debtors::DebtorsService.known_debtor?(referenz)
        # following is a dependency  & privacy violation
        # Debtors::Enquiries.find_worst_debtors
      end
    end
  end
end
