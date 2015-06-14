class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :artist
      t.string :title
      t.integer :popularity, default: 0
      t.timestamps null: false
    end

  end
end
