# id         | integer           | not null default nextval('users_id_seq'::regclass)
# first_name | character varying |
# last_name  | character varying |
# ssn        | integer           | not null
# login      | character varying | not null
# address_id | integer           |

class User < ActiveRecord::Base
  belongs_to :address
end
