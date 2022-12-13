class ContentComment < ApplicationRecord

  # userとcontent_reviewに属するアソシエーション
  belongs_to :user
  belongs_to :content_review

end
