class UsersController < ApplicationController
    before_action :authenticate_user!

    def show 
        @user = User.find(params['id'])
        user_threads = @user.forum_threads.count
        user_posts = @user.forum_posts.count
        @total_post = user_threads.to_i + user_posts.to_i
    end

    def edit
        @user = User.find(params[:id])
        authorize @user
    end

    def update
        @user = User.find(params[:id])
        authorize @user
        if @user.update(useredit_params)
            redirect_to user_path
        else
            render 'edit'
        end
    end

    private

    def useredit_params
        params.require(:users).permit(:full_name, :phone_number, :email)
    end
end