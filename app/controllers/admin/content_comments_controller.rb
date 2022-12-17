class Admin::ContentCommentsController < ApplicationController
  
  # コメントの削除機能
  def destroy
    ContentComment.find(params[:id]).destroy
    redirect_to request.referer
  end
end
