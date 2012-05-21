class CreateMovieActors < ActiveRecord::Migration
  def change
    create_table :movie_actors do |t|
      t.belongs_to :movie
      t.belongs_to :actor
      t.belongs_to :involve

      t.timestamps
    end
  end
end
