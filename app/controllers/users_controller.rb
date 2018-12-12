class UsersController < ApplicationController
    before_action :authenticate_user!

    def show 
        @user = User.find(params['id'])
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