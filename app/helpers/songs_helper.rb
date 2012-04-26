module SongsHelper
	def get_title(old_title)
		n = old_title.sub('.mp3','')
		n = n.gsub(/[-]/, ' ')
		n = n.sub('.m4a','')
	end
end
