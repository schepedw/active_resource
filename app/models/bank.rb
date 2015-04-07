class Bank < ActiveRecord::Base
  has_one :address
  def as_json
    {
      class: 'bank',
      id: id
    }
  end
end
