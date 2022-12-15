class ChangeUser < ActiveRecord::Migration[7.0]
  def change
    # remove_column :users, :name
    add_column :users, :username, :string, null: false
    # remove_column :users, :email

    add_index :users, :username, unique: true
  end
end
