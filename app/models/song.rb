class Song < ActiveRecord::Base
  # FIX IT
  # default_scope { order('updated_at DESC') } # sorts by updated at in reverse orderr
  belongs_to :artist
  belongs_to :genre
  has_many :categories
  # belongs_to :user
end
