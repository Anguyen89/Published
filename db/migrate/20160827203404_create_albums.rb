class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.text :desctiption
      t.integer :user_id, null: false
      t.string :cover_photo_url

      t.timestamps null: false
    end
  end
end
