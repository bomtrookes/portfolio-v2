class Project < ApplicationRecord
  has_one_attached :cover_image
  has_many_attached :images

  validates :name, presence: true
  validates :caption, presence: true
  validates :content, presence: true

  include PgSearch::Model
  pg_search_scope :search_all_projects,
    against: [ :name, :caption, :content, :skills ],
    using: {
      tsearch: { prefix: true }
  }

end
