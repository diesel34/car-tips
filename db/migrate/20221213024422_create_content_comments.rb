class CreateContentComments < ActiveRecord::Migration[6.1]
  def change
    create_table :content_comments do |t|
      t.text :comment
      t.integer :user_id
      t.integer :content_review_id

      t.timestamps
    end
  end
end
