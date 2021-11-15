class ReviewResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :reviewer_id, :integer
  attribute :review_text, :string
  attribute :star_rating, :integer
  attribute :movie_id, :integer

  # Direct associations

  belongs_to :reviewer,
             resource: UserResource

  belongs_to :movie

  # Indirect associations
end
