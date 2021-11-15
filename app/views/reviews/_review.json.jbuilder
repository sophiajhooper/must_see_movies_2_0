json.extract! review, :id, :reviewer_id, :review_text, :star_rating, :movie_id, :created_at, :updated_at
json.url review_url(review, format: :json)
