class UsersController < ApplicationController
  # before_action :authenticate_user!, only: [:show]
  
  def index
  end

  # ユーザー詳細ページ
  def show
    @user = User.find(params[:id])
    @content_reviews = @user.content_reviews.page(params[:page])
  end

  # ユーザー編集ページ
  def edit
    @user = User.find(params[:id])
  end
  
  # ユーザー情報の更新機能
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    flash[:notice] = "ユーザー情報を更新しました"
    redirect_to user_path(@user)
  end

  
  # ユーザー情報の更新ストロンパラメータ
  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end  

end
