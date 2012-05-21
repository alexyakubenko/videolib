class CreateMovieGenres < ActiveRecord::Migration
  def change
    create_table :movie_genres do |t|
      t.integer :percentage

      t.belongs_to :genre
      t.belongs_to :movie

      t.timestamps
    end
  end
end
