class CreateReviewEngineHomeownerReviewAttributes < ActiveRecord::Migration
  def change
    create_table :review_engine_homeowner_review_attributes do |t|
      t.integer :homeowner_review_id
      t.integer :homeowner_review_key_id
      t.string  :value

      t.timestamps null: false
    end
  end
end
