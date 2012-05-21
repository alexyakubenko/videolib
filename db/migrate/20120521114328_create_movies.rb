class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name_ru
      t.string :name_en
      t.integer :year

      t.timestamps
    end
  end
end
