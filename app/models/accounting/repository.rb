module Accounting
  module Repository
    class << self
      def find_account(referenz); end

      def check_cashflow(person)
        if Debtors::DebtorsService.known_debtor?(person.referenz)
          false
        else
          true
        end
      end
    end
  end
end
