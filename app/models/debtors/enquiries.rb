module Debtors
  module Enquiries
    class << self
      def find_worst_debtors
        all_debtors.map { |d| Accounting::Accounts.find_account(d.account_referenz) }.first
      end

      # def find_worst_debtors_2
      #   all_debtors.map { |d| Accounting::Repository.find_account(d.account_referenz) }.first
      # end
    end
  end
end
