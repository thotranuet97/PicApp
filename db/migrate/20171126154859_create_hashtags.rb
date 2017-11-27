class CreateHashtags < ActiveRecord::Migration[5.1]
  def change
    create_table :hashtags do |t|
      t.string :content
      t.integer :pic_id
      t.integer :album_id
      t.integer :user_id

      t.timestamps
    end
  end
end
