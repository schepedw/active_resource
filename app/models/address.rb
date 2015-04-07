class Address < ActiveRecord::Base
  def as_json
    {
      class: 'address',
      id: id
    }
  end
end
