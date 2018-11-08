class TableUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users
    add_column :users, :login, :string
    add_column :users, :password, :string
    add_column :users, :role, :string
  end
end
