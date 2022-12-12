class AddTitleToContentReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :content_reviews, :title, :string
  end
end
