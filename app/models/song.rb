class Song < ActiveRecord::Base
	attr_accessible :artist, :bpm, :downvotes, :summary, :title, :upvotes, :song_id, :song_file
	has_attached_file :song_file,
	:storage => :s3,
	:bucket => 'mixeight',
	:s3_credentials => Rails.root.join('config','amz.yml')
	before_create { |song| song.upvotes = song.downvotes = 0 }
	validates :title, presence: true
end
