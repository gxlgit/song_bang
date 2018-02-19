class Vibe < ActiveRecord::Base
  has_and_belongs_to_many :songs
  validates_uniqueness_of :name
end
