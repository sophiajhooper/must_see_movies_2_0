class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :reviewer_id
      t.text :review_text
      t.integer :star_rating
      t.integer :movie_id

      t.timestamps
    end
  end
end
