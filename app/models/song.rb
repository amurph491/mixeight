class Song < ActiveRecord::Base
  attr_accessible :artist, :bpm, :downvotes, :summary, :title, :upvotes, :song_id

end
