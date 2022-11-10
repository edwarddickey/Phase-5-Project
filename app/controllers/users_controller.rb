class UsersController < ApplicationController
    def index
        @users = User.all
    
        render json: @users
      end

      def show
        render json: current_user, status: :ok
      end

    # def show 
    #     user = User.find(params[:id])
    #     render json: user, status: :ok
    # end

    def create 
        user = User.create!(user_params)
        render json: user, status: :created
    end

    private 
    def user_params
        params.permit(:name, :email, :password, :password_confirmation)
    end
end
