class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name_ru
      t.string :name_en

      t.belongs_to :country

      t.timestamps
    end
  end
end
