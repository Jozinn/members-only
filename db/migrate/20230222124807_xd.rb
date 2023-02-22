class Xd < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :username
    add_column :users, :username, :string
  end
end
