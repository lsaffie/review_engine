module ReviewEngine
  class HomeownerReviewSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :rating
    has_many :homeowner_review_keys
  end
end
