require_dependency "review_engine/application_controller"

module ReviewEngine
  class HomeownerReviewsController < ApplicationController
    before_action :set_homeowner_review, only: [:show, :edit, :update, :destroy]

    # GET /homeowner_reviews
    def index
      @homeowner_reviews = HomeownerReview.all
    end

    # GET /homeowner_reviews/1
    def show
    end

    # GET /homeowner_reviews/new
    def new
      @homeowner_review = HomeownerReview.new
    end

    # GET /homeowner_reviews/1/edit
    def edit
    end

    # POST /homeowner_reviews
    def create
      @homeowner_review = HomeownerReview.new(homeowner_review_params)

      if @homeowner_review.save
        redirect_to @homeowner_review, notice: 'Homeowner review was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /homeowner_reviews/1
    def update
      if @homeowner_review.update(homeowner_review_params)
        redirect_to @homeowner_review, notice: 'Homeowner review was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /homeowner_reviews/1
    def destroy
      @homeowner_review.destroy
      redirect_to homeowner_reviews_url, notice: 'Homeowner review was successfully destroyed.'
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