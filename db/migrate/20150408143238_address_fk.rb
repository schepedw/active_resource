class AddressFk < ActiveRecord::Migration
  def up
    add_column :users, :address_id, :integer
    add_column :banks, :address_id, :integer
    add_foreign_key :users, :addresses
    add_foreign_key :banks, :addresses
  end

  def down
    remove_foreign_key :users, :addresses
    remove_foreign_key :banks, :addresses
    remove_column :users, :address_id
    remove_column :banks, :address_id
  end
end
