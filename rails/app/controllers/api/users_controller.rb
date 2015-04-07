
class Api::UsersController < ApplicationController

  def new
    @user = User.all
  end

  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def edit
    render json: User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = 'Profile for ' + @user.username + ' has been updated.'
      redirect_to api_pets_path
    else
      render :edit
    end
  end

      def create
        @user = User.new(user_params)
        if @user.save
          flash[:notice] = @user.name + ' added to list.'
          redirect_to api_users_path
        else
          render :new
        end
      end

      def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to api_users_path
      end

      private
      def user_params
        params.require(:user).permit(:firstname, :lastname, :username, :address, :phone, :email )
      end

    end
