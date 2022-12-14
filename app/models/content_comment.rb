class ContentComment < ApplicationRecord

  # userとcontent_reviewに属するアソシエーション（コメント機能）
  belongs_to :user
  belongs_to :content_review

end
