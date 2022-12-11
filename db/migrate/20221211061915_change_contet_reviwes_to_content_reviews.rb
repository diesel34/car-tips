class ChangeContetReviwesToContentReviews < ActiveRecord::Migration[6.1]
  def change
    rename_table :contet_reviews, :content_reviews
  end
end
