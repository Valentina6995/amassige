class AddInfoToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string, null: false, default: ""
    add_column :users, :city, :string

    add_index :users, :username, :unique => true
  end
end
