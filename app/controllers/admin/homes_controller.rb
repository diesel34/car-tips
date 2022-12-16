class Admin::HomesController < ApplicationController
  # ログインしてないと管理者ページに遷移できない
  before_action :authenticate_admin!
  
  # 全てのユーザー一覧（管理者側）
  def top
    @users = User.all
  end
end
