User.create(username: "user",
                       email: "user@example.com",
                       password: "password",
                       password_confirmation: "password")

playlist = Playlist.create(name: "Hip Hop")

playlist.songs.create(artist: "Michael Jackson", title: "Thriller")
playlist.songs.create(artist: "Billy Joel", title: "Piano Man")
playlist.songs.create(artist: "Taylor Swift", title: "Shake it off")
