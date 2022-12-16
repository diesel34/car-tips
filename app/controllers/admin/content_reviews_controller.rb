class Admin::ContentReviewsController < ApplicationController
  
    # 全ての投稿一覧（管理者側）
  def index
    @content_reviews = ContentReview.all
  end

    # 各ユーザーの投稿一覧（管理者側）
  def show
    @content_review = ContentReview.find(params[:id])
  end

  # 投稿データの削除
  def destroy
    @content_review = ContentReview.find(params[:id])
    @content_review.destroy
    redirect_to admin_content_reviews_path    
  end
  
  
end
