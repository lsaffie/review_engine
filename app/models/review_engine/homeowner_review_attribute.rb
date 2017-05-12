module ReviewEngine
  class HomeownerReviewAttribute < ActiveRecord::Base
    belongs_to :homeowner_review_sentiment
  end
end
