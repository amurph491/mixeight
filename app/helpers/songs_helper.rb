module SongsHelper
	def get_title(song_key)
		Song.find_by_song_id(song_key).title
	end
end
