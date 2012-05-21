class Country < ActiveRecord::Base
  validates_presence_of :name_ru, :name_en

  has_many :actors

  has_many :movie_countries
  has_many :movies, :through => :movie_countries

  def name
    self.name_ru
  end
end
