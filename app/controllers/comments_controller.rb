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

    def update
        comment = Comment.find_by(id: params[:id])
        if comment.user == session_user
            comment.update(comment_params)
            render json: comment
        else
            render json: {message: "You can only update your own comments."}
        end
    end

    def destroy
        comment = Comment.find_by(id: params[:id])
        id = comment.id
        if comment.user = session_user
            comment.delete()
            render json: {id: id, message: "Delete succesful"}
        else
            render json: {message: "You can only delete your own comments."}
        end
    end

    private

    def comment_params
        params.permit(:content)
    end

end
