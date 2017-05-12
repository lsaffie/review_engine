module ReviewEngine
  class HomeownerReview < ActiveRecord::Base
    has_many :homeowner_review_attributes
    has_many :homeowner_review_sentiments, through: :homeowner_review_attributes

    accepts_nested_attributes_for :homeowner_review_attributes
  end
end
