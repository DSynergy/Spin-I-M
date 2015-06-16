require 'test_helper'

class SongTest < ActiveSupport::TestCase

  test "it sorts songs by popularity" do
    playlist = Playlist.create(name: "Hip Hop")

    s1 = playlist.songs.create(artist: "Michael Jackson", title: "Thriller", popularity: 6)
    s2 = playlist.songs.create(artist: "Taylor Swift", title: "Shake it off", popularity: 2)
    s3 = playlist.songs.create(artist: "Billy Joel", title: "Piano Man", popularity: 3)

    result = Song.sort_by_popularity(playlist.id)
    assert_equal [s1, s3, s2], result


  end

end
