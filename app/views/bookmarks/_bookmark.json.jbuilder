json.extract! bookmark, :id, :bookmarker_id, :status, :movie_id, :created_at, :updated_at
json.url bookmark_url(bookmark, format: :json)
