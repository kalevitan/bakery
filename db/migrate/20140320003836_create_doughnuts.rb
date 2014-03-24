class CreateDoughnuts < ActiveRecord::Migration
  def change
    create_table :doughnuts do |t|
      t.string :name
      t.integer :water
      t.integer :sugar
      t.integer :salt
      t.integer :eggs
      t.integer :yeast
      t.string :filling

      t.timestamps
    end
  end
end
