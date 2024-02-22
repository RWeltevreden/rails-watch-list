class Bookmark < ApplicationRecord
  belongs_to :movie, dependent: :destroy
  belongs_to :list
  validates :movie_id, uniqueness: { scope: :list_id}
  # validates :list, presence: true, uniqueness: true
  validates :comment, presence: true, length: { minimum: 6 }
end
