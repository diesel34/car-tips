class CreateContetReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :contet_reviews do |t|

      t.integer :user_id
      t.integer :content_id
      t.string  :get_root
      t.integer :price
      t.integer :review
      t.text    :explanation

      t.timestamps
    end
  end
end
