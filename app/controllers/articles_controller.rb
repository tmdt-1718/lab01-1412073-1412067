class ArticlesController < ApplicationController
	before_action :authenticate
	add_breadcrumb "Home", :root_path
	add_breadcrumb "Blog", :articles_path , :title => "Back to blog"
	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
		add_breadcrumb "Showing Article"
	end

	def new
		@article = Article.new
		add_breadcrumb "Composing Article"
	end
	
	def edit
		@article = Article.find(params[:id])	
		add_breadcrumb "Editing Article"
	end
	
	def create
		current_user = User.find(session[:current_user]["id"])
		@article = current_user.articles.new(article_params)
		if @article.save
			# show the submitted article
			redirect_to @article
		else
			render 'new'
		end
	end

	def update
		@article = Article.find(params[:id])

		if @article.update(article_params)
			# show the submitted article
			flash[:success] = "Update article #{@article.id} successfully."
			# redirect_to @article
			redirect_to article_path(@article.id)
		else
			flash[:error] = "Cannot update article #{@article.id}."
			render 'edit'
		end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to articles_path
	end
	
	private
		def	article_params
			params.require(:article).permit(:title, :body)
		end
end
