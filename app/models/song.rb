class Song < ActiveRecord::Base
  attr_accessible :artist, :bpm, :downvotes, :summary, :title, :upvotes, :song_id
	before_create { |song| song.upvotes = song.downvotes = 0 }
end
