class Genre < ActiveRecord::Base
  validates_presence_of :name

  has_many :movie_genres
  has_many :movies, :through => :movie_genres
end
