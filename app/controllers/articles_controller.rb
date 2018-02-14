class ArticlesController < ApplicationController

	def new
	end

	def show

		@article = Article.find(params[:id])

	end

	def create
		# render plain: params[:article].inspect
		@article = Article.create(article_params)
		redirect_to @article

	end



	private

		def article_params
			params.require(:article).permit(:title, :text)
		end


end
