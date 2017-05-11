module ReviewEngine
  class HomeownerReviewAttributeSerializer < ActiveModel::Serializer
    attributes :id, :key, :value

    def key
      object.homeowner_review_key.name
    end

  end
end
