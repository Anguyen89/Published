class AddToUser < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string
    add_column :users, :bio, :text
    add_index :users, :email
    add_index :users, :session_token
  end
end
