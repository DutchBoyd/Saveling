class AddCreationIpToUsers < ActiveRecord::Migration
  def change
    add_column :users, :creation_ip, :string
  end
end
