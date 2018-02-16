class Song < ActiveRecord::Base
  # FIX IT
  # default_scope { order('updated_at DESC') } # sorts by updated at in reverse orderr
  belongs_to :artist
  belongs_to :genre
  has_and_belongs_to_many :vibes
  # belongs_to :user
end
