# id         | integer                     | not null default nextval('addresses_id_seq'::regclass)
# house      | character varying           |
# street     | character varying           |
# city       | character varying           |
# state      | character varying           |
# zip        | character varying           |
# created_at | timestamp without time zone | not null
# updated_at | timestamp without time zone | not null

class Address < ActiveRecord::Base
end
