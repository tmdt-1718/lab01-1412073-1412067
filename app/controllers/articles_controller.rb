class ArticlesController < ApplicationController
#An controller includes: index, new, edit, create, update, show and destroy action
#Controller takes request, gets data form users or database
#to view data or show things to user, we use app/views/articles/<>.html.erb

	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end
	
	def edit
		@article = Article.find(params[:id])	
	end
	
	def create
		@article = Article.new(article_params)
		
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
			params.require(:article).permit(:title, :text)
		end
end
