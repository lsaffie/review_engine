require_dependency "review_engine/application_controller"

module ReviewEngine
  class HomeownerReviewSentimentsController < ApplicationController

    def index
      @homeowner_review_sentiments = HomeownerReviewSentiment.all
      render json: @homeowner_review_sentiments
    end

  end
end
