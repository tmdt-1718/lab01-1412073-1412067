class AboutController < ApplicationController
		add_breadcrumb "Home", :root_path , :title => "Back to Homepage"
		add_breadcrumb "About", :about_index_path
end
