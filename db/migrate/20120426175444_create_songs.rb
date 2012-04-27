class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.integer :upvotes
      t.integer :downvotes
      t.string :title
      t.string :artist
      t.integer :bpm
      t.text :summary

      t.timestamps
    end
  end
end
