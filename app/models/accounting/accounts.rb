module Accounting
  module Accounts
    class << self
      def find_account(referenz)
        Repository.find_account(referenz.upcase)
      end
    end
  end
end
