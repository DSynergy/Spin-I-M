User.create(username: "user",
                       email: "user@example.com",
                       password: "password",
                       password_confirmation: "password")

playlist = Playlist.create(name: "Snoop Doggy Shea", image_url: "https://avatars.githubusercontent.com/u/7894293?v=3", description: "Raise the roof while crushing your weekly survey. Feedback for Horace: that kind of looks like a lesson...")

playlist.songs.create(artist: "Snoop Dogg", title: "Serial Killer", url: "https://soundcloud.com/user714971037/sets/snoop-dogg-serial-killa")
playlist.songs.create(artist: "Damian Marley", title: "Cypress Hill & Rusko feat Damian Marley - Can't Keep Me Down", url: "https://soundcloud.com/damianmarley/cypress-hill-rusko-feat-damian")
playlist.songs.create(artist: "Pretty Lights", title: "Jay Z Empire State Of Mind Remix", url: "https://soundcloud.com/prettylights/pretty-lights-jay-z-empire")

playlist2 = Playlist.create(name: "House", image_url: "http://djautograph.com/wp-content/uploads/2013/10/House_Music_by_Labelrx.png", description: "Are you ready to do logic puzzles!!!")

playlist2.songs.create(artist: "David August", title: "Epikur", url: "https://soundcloud.com/frankyboy-1/david-august-epikur")
playlist2.songs.create(artist: "Bonobo", title: "First Fires - Maya Jane Coles Remix", url: "https://soundcloud.com/mayajanecoles/bonobo-first-fires-feat-grey-1")
playlist2.songs.create(artist: "Moderat", title: "A New Error", url: "https://soundcloud.com/bpitch-control/moderat-a-new-error")
playlist2.songs.create(artist: "Avatism", title: "Mastadon - Mind Against Remix", url: "https://soundcloud.com/technochickens/avatism-mastodon-mind-against")

playlist3 = Playlist.create(name: "Mac-a-licious", image_url: "https://avatars2.githubusercontent.com/u/8164007?v=3&s=400", description: "Easy listening for my walk home from Turing right before lightning talks begin ;)")

playlist3.songs.create(artist: "Ratatat", title: "Seventeen Years", url: "https://soundcloud.com/rochielle-parkes/ratatat-seventeen-years")
playlist3.songs.create(artist: "Black Keys", title: "Little Black Submarines", url: "https://soundcloud.com/matrem/little-black-submarines-the")
playlist3.songs.create(artist: "The Heavy", title: "Colleen", url: "https://soundcloud.com/swag-the-blog/the-heavy-coleen-feat-the-dap")

playlist4 = Playlist.create(name: "DJ Dustin", image_url: "https://avatars2.githubusercontent.com/u/7361182?v=3&s=460", description: "Prepare to 'GEAR UP' for an a$$ whoopin!!!")

playlist4.songs.create(artist: "Eli and Fur", title: "You're So High", url: "https://soundcloud.com/eliandfur/youre-so-high")
playlist4.songs.create(artist: "Mt. Eden", title: "Still Alive", url: "https://soundcloud.com/mtedenofficial/mt-eden-still-alive")
playlist4.songs.create(artist: "De-Phazz", title: "Cut The Jazz", url: "https://soundcloud.com/natalee-oidendum/de-phazz-cut-the-jazz")
playlist4.songs.create(artist: "Drop Frame", title: "Catalyst EP - 04 Swim Feat. Annie Inkerman - Phetsta Collab", url: "https://soundcloud.com/dropframe/big-drop-trance-track")
playlist4.songs.create(artist: "Major Lazer and DJ Snake", title: "Lean On", url: "https://soundcloud.com/majorlazer/major-lazer-dj-snake-lean-on-feat-mo")

playlist5 = Playlist.create(name: "Rock", image_url: "https://upload.wikimedia.org/wikipedia/commons/b/b4/Logan_Rock_Treen_closeup.jpg")

playlist5.songs.create(artist: "Led Zepplin", title: "Kashmir", url: "https://soundcloud.com/kuploadr2/led-zeppelin-kashmir")
playlist5.songs.create(artist: "Queens of the Stone Age", title: "Mosquito Song", url: "https://soundcloud.com/postal-lady/queens-of-the-stone-age-mosquito-song")
playlist5.songs.create(artist: "Radiohead", title: "Paranoid Android", url: "https://soundcloud.com/marcositoss/radiohead-paranoid-android-ep")
playlist5.songs.create(artist: "Pink Floyd", title: "Shine on your Crazy Diamond I - IX", url: "https://soundcloud.com/citticringle/shine-on-you-crazy-diamond-parts-i-ix")
