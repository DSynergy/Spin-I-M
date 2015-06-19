User.create(username: "user",
                       email: "user@example.com",
                       password: "password",
                       password_confirmation: "password")

playlist = Playlist.create(name: "Hip Hop")

playlist.songs.create(artist: "Snoop Dogg", title: "Serial Killer", url: "https://soundcloud.com/user714971037/sets/snoop-dogg-serial-killa")
playlist.songs.create(artist: "Damian Marley", title: "Cypress Hill & Rusko feat Damian Marley - Can't Keep Me Down", url: "https://soundcloud.com/damianmarley/cypress-hill-rusko-feat-damian")
playlist.songs.create(artist: "Queens of the Stone Age", title: "I Appear Missing", url: "https://soundcloud.com/marcos_a/i-appear-missing-queens-of-the")

# Dubstep:
# https://soundcloud.com/majorlazer/major-lazer-dj-snake-lean-on-feat-mo

#Rock
# https://soundcloud.com/postal-lady/queens-of-the-stone-age-mosquito-song
