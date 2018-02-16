class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.references :artist, null: false, index:true, foreign_key: true
      t.string :title, null: false
      t.integer :song_num
      t.references :genre, :category, index:true, foreign_key: true

    end
  end
end
