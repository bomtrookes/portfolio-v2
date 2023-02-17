class Project < ApplicationRecord
  has_one_attached :image

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
