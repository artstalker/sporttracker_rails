class CreateProgramToExcersices < ActiveRecord::Migration
  def change
    create_table :program_to_excersices do |t|
      t.integer :program_id
      t.integer :excersice_id

      t.timestamps
    end
  end
end
