class ArticlesController < ApplicationController

    def index
        articles = Article.all.sort_by { |key| key[:publication]}.reverse
        render json: articles
    end
end
