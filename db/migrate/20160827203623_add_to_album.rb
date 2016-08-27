class AddToAlbum < ActiveRecord::Migration
  def change
    add_index :albums, :user_id
    remove_column :albums, :desctiption
    add_column :albums, :description, :text
  end
end
