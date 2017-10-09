class AlbumsController < ApplicationController
	add_breadcrumb "Home", :root_path, :title => "Back to Homepage"
	add_breadcrumb "Albums", :albums_path, :title => "Back to Albums"

	def index
		@albums = Album.all
	end
	
	def show
		@album = Album.find(params[:id])
		add_breadcrumb "Now Showing"
	end
end
