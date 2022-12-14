class Review < ApplicationRecord
  
  # userとcontent_reviewに属するアソシエーション（レビュー機能）
  belongs_to :user
  belongs_to :content_review
end
