class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image_url, null: false
      t.string :title
      t.string :description
      t.integer :user_id, null: false
      t.integer :album_id
      t.string :image_type

      t.timestamps null: false
    end
    add_index :images, :user_id
    add_index :images, :album_id
  end
end
