class FavoritesController < ApplicationController

  # いいね機能の記述
  def create
    content_review = ContentReview.find(params[:content_review_id])
    favorite = current_user.favorites.new(content_review_id: content_review.id)
    favorite.save
    redirect_to content_review_path(content_review)
  end

  # いいねを解除する記述
  def destroy
    content_review = ContentReview.find(params[:content_review_id])
    favorite = current_user.favorites.find_by(content_review_id: content_review.id)
    favorite.destroy
    redirect_to content_review_path(content_review)
  end

end
