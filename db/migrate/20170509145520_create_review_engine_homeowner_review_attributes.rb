class CreateReviewEngineHomeownerReviewAttributes < ActiveRecord::Migration
  def change
    create_table :review_engine_homeowner_review_attributes do |t|
      t.integer :homeowner_review_id
      t.integer :homeowner_review_sentiment_id

      t.timestamps null: false
    end
  end
end
