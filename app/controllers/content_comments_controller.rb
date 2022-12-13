class ContentCommentsController < ApplicationController

  # コメントをデーターベースに保存する記述
  def create
    content_review = ContentReview.find(params[:content_review_id])
    comment = current_user.content_comments.new(content_comment_params)
    comment.content_review_id = content_review.id
    comment.save
    flash[:notice] = "コメントが成功しました"
    redirect_to content_review_path(content_review)
  end

  # コメントの削除機能
  def destroy
    ContentComment.find(params[:id]).destroy
    redirect_to content_review_path(params[:content_review_id])
  end

  # コメントデータのストロングパラメータ
  private

  def content_comment_params
    params.require(:content_comment).permit(:comment)
  end

end
