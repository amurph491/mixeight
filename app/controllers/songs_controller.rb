class SongsController < ApplicationController
  def index
	@songs = AWS::S3::Bucket.find(BUCKET).objects
  end

  def upload
	begin
	AWS::S3::S3Object.store(sanitize_filename(params[:mp3file].original_filename), 
	params[:mp3file].read, BUCKET, :access => :public_read)
	redirect_to root_path
	rescue
		render :text => "Upload failed"
	end
  end

  def delete
	if(params[:song])
		AWS::S3::S3Object.find(params[:song], BUCKET).delete
		redirect_to root_path
	else
		render :text => "Song was not found!"
	end
  end
  
  	def get_title(file_name)
		title = file_name
		title.sub(".mp3",'')
		title.sub('-',' ')
	end
  
  private  
  
	def sanitize_filename(file_name)  
		just_filename = File.basename(file_name)  
		just_filename.sub(/[^\w\.\-]/,'_')  
	end  
	

end
