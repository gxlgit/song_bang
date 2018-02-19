class CreateJoinTableSongVibe < ActiveRecord::Migration[5.1]
  def change
    create_join_table :songs, :vibes do |t|
      t.index [:song_id, :vibe_id]
    end
  end
end

# https://rubyplus.com/articles/3451-Has-Many-Through-and-Has-and-Belongs-to-Many-in-Rails-5
# http://joshfrankel.me/blog/create-a-many-to-many-activerecord-association-in-ruby-on-rails/
