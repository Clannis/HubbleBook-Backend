class CommentsController < ApplicationController

    def create
        comment = session_user.comments.create(comment_params)
        render json: comment
    end

    private

    def comment_params
        params.permit(:content)
    end

end
