module ArticlesHelper
	def article_params
		params.require(:article).permit(:name, :description, :image, images_attributes: [:image])
	end

	def find_article
		@article = Article.find(params[:id])
	end
end
