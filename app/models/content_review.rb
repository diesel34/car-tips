class ContentReview < ApplicationRecord
 
  # ActiveStorageを使って画像を持たせるため（投稿画像）
  has_one_attached :image

  # userに属するアソシエーション
  belongs_to :user
  
  # アソシエーションでたくさん持っている側（コメント機能といいね機能とレビュー機能）
  has_many :content_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :review, dependent: :destroy

  # バリデーションの設定
  validates :title, presence:true
  validates :image, presence:true
  validates :get_root, presence: true
  validates :price, presence: true
  validates :explanation, presence: true

  # ユーザidがfavoritesテーブルに存在するか調べる（trueかfalse）
  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
  
  # デフォルトの画像設定
  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end


end
