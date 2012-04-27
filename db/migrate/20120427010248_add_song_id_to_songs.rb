class AddSongIdToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :song_id, :string
  end
end
