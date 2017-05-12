module ReviewEngine
  class HomeownerReviewSerializer < ActiveModel::Serializer
    attributes :id, :homeowner_id, :rating, :company_id
    has_many :homeowner_review_attributes
  end
end
