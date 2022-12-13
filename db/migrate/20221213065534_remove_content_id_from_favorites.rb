class RemoveContentIdFromFavorites < ActiveRecord::Migration[6.1]
  def change
    remove_column :favorites, :content_id, :integer
  end
end
