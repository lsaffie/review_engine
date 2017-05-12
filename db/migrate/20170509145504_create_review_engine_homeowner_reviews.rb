class CreateReviewEngineHomeownerReviews < ActiveRecord::Migration
  def change
    create_table :review_engine_homeowner_reviews do |t|
      t.integer :homeowner_id
      t.integer :rating
      t.integer :company_user_id
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
