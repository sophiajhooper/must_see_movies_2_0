class Movie < ApplicationRecord
  # Direct associations

  belongs_to :director,
             counter_cache: :filmography_count

  has_many   :bookmarks,
             dependent: :destroy

  has_many   :reviews,
             dependent: :destroy

  has_many   :roles,
             dependent: :destroy

  # Indirect associations

  has_many   :cast,
             through: :roles,
             source: :actor

  has_many   :reviewers,
             through: :reviews,
             source: :reviewer

  has_many   :bookmarkers,
             through: :bookmarks,
             source: :bookmarker

  # Validations

  validates :director_id, presence: true

  validates :title, presence: true

  # Scopes

  def to_s
    title
  end
end
