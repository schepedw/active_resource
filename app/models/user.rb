class User < ActiveRecord::Base
  has_many :accounts
  has_one :address
  def as_json
    {
      class: 'user',
      id: id
    }
  end
end
