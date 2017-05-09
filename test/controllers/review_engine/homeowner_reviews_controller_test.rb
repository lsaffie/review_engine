require 'test_helper'

module ReviewEngine
  class HomeownerReviewsControllerTest < ActionController::TestCase
    setup do
      @homeowner_review = review_engine_homeowner_reviews(:one)
      @routes = Engine.routes
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:homeowner_reviews)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create homeowner_review" do
      assert_difference('HomeownerReview.count') do
        post :create, homeowner_review: { rating: @homeowner_review.rating, source_company_id: @homeowner_review.source_company_id, source_user_id: @homeowner_review.source_user_id, user_id: @homeowner_review.user_id }
      end

      assert_redirected_to homeowner_review_path(assigns(:homeowner_review))
    end

    test "should show homeowner_review" do
      get :show, id: @homeowner_review
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @homeowner_review
      assert_response :success
    end

    test "should update homeowner_review" do
      patch :update, id: @homeowner_review, homeowner_review: { rating: @homeowner_review.rating, source_company_id: @homeowner_review.source_company_id, source_user_id: @homeowner_review.source_user_id, user_id: @homeowner_review.user_id }
      assert_redirected_to homeowner_review_path(assigns(:homeowner_review))
    end

    test "should destroy homeowner_review" do
      assert_difference('HomeownerReview.count', -1) do
        delete :destroy, id: @homeowner_review
      end

      assert_redirected_to homeowner_reviews_path
    end
  end
end
