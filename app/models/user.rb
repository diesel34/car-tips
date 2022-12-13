class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # アソシエーションでたくさん持っている側（投稿とコメント機能といいね機能）
  has_many :content_reviews, dependent: :destroy
  has_many :content_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  # ActiveStorageを使って画像を持たせるため(プロフィール画像）
  has_one_attached :profile_image

  # メソッドに引数設定し、設定した値に画像サイズの変換をする
  def get_profile_image(width, height)
  unless profile_image.attached?
    file_path = Rails.root.join('app/assets/images/sample-author1.jpg')
    profile_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
  end
  profile_image.variant(resize_to_limit: [width, height]).processed
  end
  
end
