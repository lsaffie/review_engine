module ReviewEngine
  class HomeownerReview < ActiveRecord::Base
    has_many :homeowner_review_attributes
  end
end
