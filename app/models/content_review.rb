class ContentReview < ApplicationRecord
 
  # ActiveStorageを使って画像を持たせるため（投稿画像）
  has_one_attached :image

  # userに属するアソシエーション
  belongs_to :user

  # デフォルトの画像設定
  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end


end
