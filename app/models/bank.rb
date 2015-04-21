# id         | integer                     | not null default nextval('banks_id_seq'::regclass)
# created_at | timestamp without time zone | not null
# updated_at | timestamp without time zone | not null
# address_id | integer                     |

class Bank < ActiveRecord::Base
  belongs_to :address
end
