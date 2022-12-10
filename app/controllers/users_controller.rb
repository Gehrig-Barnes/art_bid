class UsersController < ApplicationController
    skip_before_action :authorize, :only => :create

    #/sign_up
    def create_user
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    #/user
    def get_user
        user = current_user
        render json: user, status: :ok
    end

    private

    def user_params
        params.permit(:username, :password, :email, :about, )
    end
end
