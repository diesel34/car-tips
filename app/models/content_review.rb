class ContentReview < ApplicationRecord
 
  # ActiveStorageを使って画像を持たせるため
  has_one_attached :image

  # userに属するアソシエーション
  bilongs_to :user

end
