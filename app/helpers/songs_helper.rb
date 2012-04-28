module SongsHelper
	def get_title(song_key)
		t = song_key.gsub(".mp3", "")
		t = t.gsub("m4a", "")
		t = t.gsub(/[-_]/, " ")
	end
end
