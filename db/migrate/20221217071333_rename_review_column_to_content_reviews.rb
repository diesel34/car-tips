class RenameReviewColumnToContentReviews < ActiveRecord::Migration[6.1]
  def change
  rename_column :content_reviews, :review, :score
  end
end
