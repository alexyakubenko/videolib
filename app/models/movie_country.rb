class MovieCountry < ActiveRecord::Base
  belongs_to :country
  belongs_to :movie
end
