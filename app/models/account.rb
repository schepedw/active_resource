class Account < ActiveRecord::Base
  belongs_to :bank
  belongs_to :user
  def as_json
    {
      class: 'account',
      id: id
    }
  end
end
