class AddContentReviewIdToFavorites < ActiveRecord::Migration[6.1]
  def change
    add_column :favorites, :content_review_id, :integer
  end
end
