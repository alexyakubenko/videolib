class Actor < ActiveRecord::Base
  validates_presence_of :name_ru, :name_en, :country

  belongs_to :country

  has_many :movie_actors
  has_many :movies, :through => :movie_actors

  def name
    self.name_ru
  end
end
