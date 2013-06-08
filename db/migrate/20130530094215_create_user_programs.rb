class CreateUserPrograms < ActiveRecord::Migration
  def change
    create_table :user_programs do |t|
      t.integer :user_id
      t.integer :program_id
      t.date :start_date
      t.datetime :shift
      t.string :state

      t.timestamps
    end
  end
end
