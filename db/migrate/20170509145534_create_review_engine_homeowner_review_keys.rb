class CreateReviewEngineHomeownerReviewKeys < ActiveRecord::Migration
  def change
    create_table :review_engine_homeowner_review_keys do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
