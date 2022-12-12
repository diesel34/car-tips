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
    @content_reviews = ContentReview.all
  end

  def show
    @content_review = ContentReview.find(params[:id])
  end
  
  def edit
  end
  
  def destroy
    @content_review = ContentReview.find(params[:id])
    @content_review.destroy
    redirect_to content_review_path
    
  end
  
  
  
  # 投稿データのストロングパラメータ
  private
  
  def content_review_params
    params.require(:content_review).permit(:get_root, :price, :explanation, :image, :title)
  end
  
  
end

