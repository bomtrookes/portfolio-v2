class Project < ApplicationRecord
  has_one_attached :image

  # serialize :skills, Array, presence: true
  validates :name, presence: true
  validates :caption, presence: true
  validates :content, presence: true

  # validates :url, presence: true
  # validates :github, presence: true
  # validates :blog, presence: true
end
