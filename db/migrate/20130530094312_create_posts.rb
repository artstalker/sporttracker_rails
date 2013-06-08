class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.text :message
      t.datetime :date

      t.timestamps
    end
  end
end
