class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: true, uniqueness: true
  has_many :lists, through: :bookmarks
  validates :overview, presence: true
end
