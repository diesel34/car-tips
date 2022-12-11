class ContentReviewsController < ApplicationController
  
  # 新規投稿のデータ
  def new
    @content_review = ContentReview.new  
  end

  # 投稿データの保存
  def create
    @content_review = ContentReview.new(content_review_params)
    @content_review.user_id = current_user.id
    @content_review.save
    redirect_to content_reviews_path
  end



  def index
  end

  def show
  end
  
  def edit
  end
  
  
  
  # 投稿データのストロングパラメータ
  private
  
  def content_review_params
    params.require(:content_review).permit(:get_root, :price, :review, :image)
  end
  
  
end

