class MovieGenre < ActiveRecord::Base
  validates_presence_of :percentage

  belongs_to :genre
  belongs_to :movie
end
