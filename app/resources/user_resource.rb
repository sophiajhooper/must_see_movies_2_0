class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :email, :string
  attribute :password, :string
  attribute :username, :string

  # Direct associations

  has_many   :bookmarks,
             foreign_key: :bookmarker_id

  has_many   :reviews,
             foreign_key: :reviewer_id

  # Indirect associations

  many_to_many :movie_reviews,
               resource: MovieResource

  many_to_many :movie_bookmarks,
               resource: MovieResource

end
