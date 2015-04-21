# id     | integer           | not null default nextval('account_types_id_seq'::regclass)
# name   | character varying | 

class AccountType < ActiveRecord::Base
  def as_json(options = {})
    {'the name of this entry is' => name,
     'its id is' => 'id'
    }
  end
end
