class SongsController < ApplicationController
  def new
	@song = Song.new()
  end
  
  def index
	@songs = Song.all
  end
  
  def create
		@song = Song.new(params[:song])
	if @song.save!
		redirect_to songs_path
	else
		render 'new'
	end
  end

  def delete
	if(params[:song])
		s = Song.find_by_title(params[:song])
		s.delete
		redirect_to songs_path
	else
		render :text => "Song was not found!"
	end
  end
  
  def upvote
	if(params[:song])
		s = Song.find_by_title(params[:song])
		s.upvotes += 1
		s.save
		flash[:notice] = "#{s.title} upvoted"
		redirect_to songs_path
	else
		render :text => "Can't upvote -- Song not found"
	end;
  end
  
  def downvote
	if(params[:song])
		s = Song.find_by_title(params[:song])
		s.downvotes += 1
		s.save
		redirect_to songs_path
	else
		render :text => "Can't downvote -- Song not found"
	end
	
  end
  
  private  
  
	def sanitize_filename(file_name)  
		just_filename = File.basename(file_name)  
		just_filename.sub(/[^\w\.\-]/,'_')  
	end  
	

end
