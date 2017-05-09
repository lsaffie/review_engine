module ReviewEngine
  class HomeownerReviewAttributeSerializer < ActiveModel::Serializer
    attributes :id, :homeowner_review_id, :homeowner_review_key_id
    #belongs_to :homeowner_review_key
  end
end
