class ContentReviewsController < ApplicationController
  
  def new
    @content_reviews = ContentReviews.new  
  end

  def create
    @content_reviews = ContentReviews.new(content_reviews_params)
    @content_reviews.user_id = current_user.id
    @content_reviews.save
    redirect_to content_reviews_path
  end



  def index
  end

  def show
  end
  
  private
  
  def content_reviews_params
    params.requice(:content_reviews).permit(:get_root, :price, :review)
  
  
  
end

