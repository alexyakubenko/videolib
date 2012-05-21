class Movie < ActiveRecord::Base
  validates_presence_of :name_ru, :name_en, :year

  has_many :movie_countries
  has_many :countries, :through => :movie_countries

  has_many :movie_genres
  has_many :genres, :through => :movie_genres

  has_many :movie_actors
  has_many :actors, :through => :movie_actors

  has_many :movie_carriers
  has_many :carriers, :through => :movie_carriers

  accepts_nested_attributes_for :movie_countries, :allow_destroy => true
  accepts_nested_attributes_for :movie_actors,    :allow_destroy => true
  accepts_nested_attributes_for :movie_genres,    :allow_destroy => true
  accepts_nested_attributes_for :movie_carriers,  :allow_destroy => true
end
