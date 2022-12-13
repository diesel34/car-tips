class ContentReviewsController < ApplicationController
  
  # 新規投稿のデータ
  def new
    @content_review = ContentReview.new  
  end

  # 投稿データの保存
  def create
    @content_review = ContentReview.new(content_review_params)
    @content_review.user_id = current_user.id
    if @content_review.save
      flash[:notice] = "投稿が成功しました"
      redirect_to content_reviews_path
    else
      render :new
    end
  end


  # 投稿データ一覧表示
  def index
    @content_reviews = ContentReview.page(params[:page])
  end

  # 投稿データの詳細ページとコメントの変数
  def show
    @content_review = ContentReview.find(params[:id])
    @content_comment = ContentComment.new
  end
  
  # 投稿データの編集ページ
  def edit
    @content_review = ContentReview.find(params[:id])
  end
  
  # 投稿データー更新機能
  def update
    @content_review = ContentReview.find(params[:id])
    @content_review.update(content_review_params)
    redirect_to content_review_path(@content_review)
  end
  
  
  
  # 投稿データの削除
  def destroy
    @content_review = ContentReview.find(params[:id])
    @content_review.destroy
    redirect_to content_reviews_path    
  end
  
  
  
  # 投稿データのストロングパラメータ
  private
  
  def content_review_params
    params.require(:content_review).permit(:get_root, :price, :explanation, :image, :title)
  end
  
  
end

