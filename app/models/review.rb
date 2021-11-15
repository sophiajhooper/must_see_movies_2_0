class Review < ApplicationRecord
  # Direct associations

  belongs_to :reviewer,
             class_name: "User"

  belongs_to :movie

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    reviewer.to_s
  end
end
