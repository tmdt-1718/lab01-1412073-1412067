class CommentsController < ApplicationController
	def new
	end

	def create
		current_user = User.find(session[:current_user]["id"])
		@article = current_user.articles.find(params[:article_id])
		@comment = @article.comments.create(body: params[:comment]["body"], user_id: current_user.id)
		if @comment.save
    # show the submitted article
			redirect_to article_path(@article)
		else
			render :new
		end
	end

	def destroy
		@article = Article.find(params[:article_id])
		@comment = @article.comments.find(params[:id])
		@comment.destroy
		redirect_to article_path(@article)
	end
	
	private
		def comment_params
			params.require(:comment).permit(:body)
		end
end
