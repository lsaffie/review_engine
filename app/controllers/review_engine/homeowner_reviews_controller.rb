require_dependency "review_engine/application_controller"

module ReviewEngine
  class HomeownerReviewsController < ApplicationController
    before_action :set_homeowner_review, only: [:show, :edit, :update, :destroy]

    # GET /homeowner_reviews
    def index
      @homeowner_reviews = HomeownerReview.all
      render json: @homeowner_reviews
    end

    # GET /homeowner_reviews/1
    def show
      render json: @homeowner_review
    end

    # POST /homeowner_reviews
    def create
      @homeowner_review = HomeownerReview.new(homeowner_review_params)
      @homeowner_review.save

      render json: @homeowner_review
    end

    # PATCH/PUT /homeowner_reviews/1
    def update
      @homeowner_review.update(homeowner_review_params)
      render json: @homeowner_review
    end

    # DELETE /homeowner_reviews/1
    def destroy
      @homeowner_review.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_homeowner_review
        @homeowner_review = HomeownerReview.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def homeowner_review_params
        params.require(:homeowner_review).permit(:user_id, :rating, :source_user_id, :source_company_id)
      end
  end
end
