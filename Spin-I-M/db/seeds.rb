User.create(username: "user",
                       email: "user@example.com",
                       password: "password",
                       password_confirmation: "password")

playlist = Playlist.create(name: "Hip Hop")

playlist.songs.create(artist: "Snoop Dogg", title: "Serial Killer", url: "https://soundcloud.com/user714971037/sets/snoop-dogg-serial-killa")
playlist.songs.create(artist: "Damian Marley", title: "Cypress Hill & Rusko feat Damian Marley - Can't Keep Me Down", url: "https://soundcloud.com/damianmarley/cypress-hill-rusko-feat-damian")
playlist.songs.create(artist: "Pretty Lights", title: "Jay Z Empire State Of Mind Remix", url: "https://soundcloud.com/prettylights/pretty-lights-jay-z-empire")

# playlist2 = Playlist.create(name: "House")

playlist3 = Playlist.create(name: "Mac's Selections")

playlist3.songs.create(artist: "Ratatat", title: "Seventeen Years", url: "https://soundcloud.com/rochielle-parkes/ratatat-seventeen-years")
playlist3.songs.create(artist: "Black Keys", title: "Little Black Submarines", url: "https://soundcloud.com/matrem/little-black-submarines-the")
playlist3.songs.create(artist: "The Heavy", title: "Colleen", url: "https://soundcloud.com/swag-the-blog/the-heavy-coleen-feat-the-dap")

playlist4 = Playlist.create(name: "Dustin's Selections")

playlist4.songs.create(artist: "Eli and Fur", title: "You're So High", url: "https://soundcloud.com/eliandfur/youre-so-high")
playlist4.songs.create(artist: "Mt. Eden", title: "Still Alive", url: "https://soundcloud.com/mtedenofficial/mt-eden-still-alive")
playlist4.songs.create(artist: "De-Phazz", title: "Cut The Jazz", url: "https://soundcloud.com/natalee-oidendum/de-phazz-cut-the-jazz")
playlist4.songs.create(artist: "Drop Frame", title: "Catalyst EP - 04 Swim Feat. Annie Inkerman - Phetsta Collab", url: "https://soundcloud.com/dropframe/big-drop-trance-track")

playlist5 = Playlist.create(name: "Rock")

playlist5.songs.create(artist: "Led Zepplin", title: "Kashmir", url: "https://soundcloud.com/kuploadr2/led-zeppelin-kashmir")
playlist5.songs.create(artist: "Queens of the Stone Age", title: "Mosquito Song", url: "https://soundcloud.com/postal-lady/queens-of-the-stone-age-mosquito-song")


# https://soundcloud.com/majorlazer/major-lazer-dj-snake-lean-on-feat-mo
