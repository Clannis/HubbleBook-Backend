class UsersController < ApplicationController

    def create
        user = User.new(user_params)
        if user.save
          render json: user
        else
          render json: {errors: user.errors.full_messages.to_sentence}
        end
    end

    private

    def user_params
        params.permit(:email, :username, :password)
    end

end
