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

      def check_cashflow2(person)
        !(Debtors::Enquiries.find_worst_debtors == person)
      end
    end
  end
end
