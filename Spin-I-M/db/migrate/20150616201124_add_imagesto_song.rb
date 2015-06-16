class AddImagestoSong < ActiveRecord::Migration
  def change
    add_column :songs, :images, :string
    add_column :songs, :url, :string
  end
end
