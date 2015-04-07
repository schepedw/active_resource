class AccountType < ActiveRecord::Base
  def as_json
    {
      class: 'account_type',
      id: id
    }
  end
end
