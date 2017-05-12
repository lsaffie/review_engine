class CreateReviewEngineHomeownerReviewSentiments< ActiveRecord::Migration
  def change
    create_table :review_engine_homeowner_review_sentiments do |t|
      t.string :name
      t.string :tag

      t.timestamps null: false
    end
  end
end
