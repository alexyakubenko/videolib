class MovieCarrier < ActiveRecord::Base
  belongs_to :carrier
  belongs_to :movie
end
