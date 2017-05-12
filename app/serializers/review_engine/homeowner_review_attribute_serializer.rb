module ReviewEngine
  class HomeownerReviewAttributeSerializer < ActiveModel::Serializer
    attributes :id, :sentiment

    def sentiment
      object.homeowner_review_sentiment.name
    end

  end
end
