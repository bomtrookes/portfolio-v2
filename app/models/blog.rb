class Blog < ApplicationRecord
  has_one_attached :image

  validates :title, presence: true
  validates :content, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_title_and_content,
    against: [ :title, :content ],
    using: {
      tsearch: { prefix: true }
  }
end
