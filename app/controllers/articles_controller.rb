class ArticlesController < ApplicationController

    def index
        articles = Article.all.sort_by { |key| key[:publication]}.reverse
        render json: articles
    end

    def show
        article = Article.find_by(news_id: params[:id])
        render json: article
    end

    def missions
        articles = Article.find_by_mission(params[:mission_name])
        render json: articles
    end

    def search
        articles = Article.search_for(params[:search])
        if articles.empty?()
            render json: {message: "No articles match your search critera"}
        else
            render json: articles
        end
    end
end
