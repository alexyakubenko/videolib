class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name_ru
      t.string :name_en

      t.timestamps
    end
  end
end
