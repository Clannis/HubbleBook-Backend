class CommentsController < ApplicationController

    def create
        comment = session_user.comments.create(comment_params)
        render json: comment
    end

    def index
        comments = Article.find_by(news_id: params[:article_id]).comments
        render json: comments
    end

    private

    def comment_params
        params.permit(:content, :article_id)
    end

end
