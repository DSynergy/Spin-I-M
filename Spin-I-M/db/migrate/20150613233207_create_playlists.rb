class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :name
      t.integer :rating, default: 0
      t.timestamps null: false
    end

  end
end
