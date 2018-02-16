class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :names, null: false
      t.string :img_url
    end
  end
end
