class CreateBodyStats < ActiveRecord::Migration
  def change
    create_table :body_stats do |t|
      t.integer :user_id
      t.integer :Height
      t.integer :Weight
      t.integer :Biceps
      t.integer :Waist
      t.date :Date

      t.timestamps
    end
  end
end
