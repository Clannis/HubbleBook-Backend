class CommentsController < ApplicationController

    def create
        comment = Article.find_by(news_id: params[:article_id]).comments.create(comment_params)
        comment.user = session_user
        if comment.save
            render json: comment
        else
            render json: {message: "You can only post a comment if you are logged in."}
        end
    end

    def index
        comments = Article.find_by(news_id: params[:article_id]).comments
        render json: comments
    end

    private

    def comment_params
        params.permit(:content)
    end

end
