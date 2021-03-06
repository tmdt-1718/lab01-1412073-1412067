class PhotosController < ApplicationController
	add_breadcrumb "Home", :root_path, :title => "Back to Homepage"
	add_breadcrumb "Albums", :albums_path, :title => "Back to Albums"
	
	def create
		@album = Album.find(params[:album_id])
		@photo = @album.photos.create(photo_params)
		redirect_to album_path(@album)
		add_breadcrumb "Creating Album"
	end

	def show
		@album = Album.find(params[:album_id])
		@photo = Photo.find(params[:id])	

		#update changes the order of records in database
		if @photo.update(view: @photo.view+1)
		end

		if @album.update({view: @album.view+1})
		end
		add_breadcrumb "Showing Image"
	#	if @photo.update(photo_params)
	#	end
	end

	#this function cannot be used due to (param is missing or the value is empty) error
	#i cant fix it
	def photo_params
		  params.require(:photo).permit(:source, :creator, :view)
	end
end
