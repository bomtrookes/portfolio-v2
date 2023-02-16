class Project < ApplicationRecord
  has_one_attached :image

  validates :name, presence: true
  validates :caption, presence: true
  validates :content, presence: true
  validates :skills, presence: true

  # validates :url, presence: true
  # validates :github, presence: true
  # validates :blog, presence: true
end
