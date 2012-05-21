class CreateMovieCountries < ActiveRecord::Migration
  def change
    create_table :movie_countries do |t|
      t.belongs_to :country
      t.belongs_to :movie

      t.timestamps
    end
  end
end
