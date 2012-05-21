class CreateInvolves < ActiveRecord::Migration
  def change
    create_table :involves do |t|
      t.string :name

      t.timestamps
    end
  end
end
