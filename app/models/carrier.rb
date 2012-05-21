class Carrier < ActiveRecord::Base
  validates_presence_of :name

  has_many :movie_carriers
  has_many :movies, :through => :movie_carriers
end
