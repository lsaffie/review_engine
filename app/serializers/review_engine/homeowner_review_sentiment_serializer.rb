module ReviewEngine
  class HomeownerReviewSentimentSerializer < ActiveModel::Serializer
    attributes :id, :name, :tag
  end
end
