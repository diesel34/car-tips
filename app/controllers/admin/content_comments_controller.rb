class Admin::ContentCommentsController < ApplicationController
  
  # コメントの削除機能
  def destroy
    ContentComment.find(params[:id]).destroy
    redirect_to content_review_path(params[:content_review_id])
  
  end
end
