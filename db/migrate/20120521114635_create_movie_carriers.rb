class CreateMovieCarriers < ActiveRecord::Migration
  def change
    create_table :movie_carriers do |t|
      t.belongs_to :movie
      t.belongs_to :carrier

      t.timestamps
    end
  end
end
