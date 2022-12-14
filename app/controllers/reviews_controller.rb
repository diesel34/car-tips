class ReviewsController < ApplicationController
  def index
  end
    
  def create
    @review = Review.new(review_params)
  end

  private
  def review_params
    params.permit(:content_review_id, :score, :content)
  end  
  

end
