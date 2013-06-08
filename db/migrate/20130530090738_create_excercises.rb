class CreateExcercises < ActiveRecord::Migration
  def change
    create_table :excercises do |t|
      t.string :name
      t.integer :muscle_id
      t.string :complexity
      t.string :description
      t.string :gif_url

      t.timestamps
    end
  end
end
