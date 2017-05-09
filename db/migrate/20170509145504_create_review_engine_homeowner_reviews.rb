class CreateReviewEngineHomeownerReviews < ActiveRecord::Migration
  def change
    create_table :review_engine_homeowner_reviews do |t|
      t.integer :user_id
      t.integer :rating
      t.integer :source_user_id
      t.integer :source_company_id

      t.timestamps null: false
    end
  end
end
