Genre.destroy_all
Vibe.destroy_all
Artist.destroy_all
Song.destroy_all


vibes = [  "Start This Party",
          "Love Songs",
          "Power Ballads",
          "Slow Jams",
          "Group Sing-a-long", #4
          "Songs You Don't Actually Know the Words To",
          "Breakup",
          "Disney",
          "80s Dance Party",
          "Grunge Era", #9
          "90s Hip Hop Fever",
          "00s Popalicious",
          "So Emo",
          "Best Air Guitar Solos",
          "Classics You Should Know"
]

vibes.map! do |vibe|
  Vibe.create(name: vibe)
end

genres = ["Pop",
          "Rock",
          "Latin",
          "R&B",
          "Rap",
          "Alternative", #5
          "Indie", #6
          "Broadway",
          "Hip Hop",
          "Blues",
          "Soft Rock", #10
          "Reggae",
          "Ska", #12
          "Country",
          "Soul",
          "Funk",
          "Punk", #16
          "Disco",
          "New Wave",
          "Folk"
]

genres.map! do |genre|
  Genre.create(name: genre)
end

cardigans = Artist.create(name: "The Cardigans", img_url: "https://i.pinimg.com/736x/74/5c/67/745c67da54ad2b8bd14ff9b38e3b56f7--my-music-nina-persson.jpg")
queen = Artist.create(name: "Queen", img_url: "https://ohfact2-cyberpanthers.netdna-ssl.com/wp-content/uploads/2016/06/queen_the_band.jpg")
journey = Artist.create(name: "Journey", img_url: "")
cyndi = Artist.create(name: "Cyndi Lauper", img_url: "")
katy = Artist.create(name: "Katy Perry", img_url: "")
gwen = Artist.create(name: "No Doubt", img_url: "")
oasis = Artist.create(name: "Oasis", img_url: "")
drake = Artist.create(name: "Drake", img_url: "")
sir = Artist.create(name: "Sir Mix-a-Lot", img_url: "")
beatles = Artist.create(name: "The Beatles", img_url: "")
taylor = Artist.create(name: "Taylor Swift", img_url: "")
deathcab = Artist.create(name: "Death Cab For Cutie", img_url: "")
ricky = Artist.create(name: "Ricky Martin", img_url: "")
system_Of = Artist.create(name: "System of a Down", img_url: "")
diana = Artist.create(name: "Diana Ross", img_url: "")
supremes = Artist.create(name: "The Supremes", img_url: "")
ramones = Artist.create(name: "The Ramones", img_url: "")
backstreet = Artist.create(name: "Backstreet Boys", img_url: "")


song1 = Song.create(title: "Love Fool", artist: cardigans, genre: genres[5])
song1.vibes << vibes[4]

song2 = Song.create(title: "I'm Just A Girl", artist: gwen, genre: genres[12])
song2.vibes << vibes[9]

song3 = Song.create(title: "Don't Stop Believing", artist: journey , genre: genres[10])
song3.vibes << vibes[4]

song4 = Song.create(title: "Blitzreig Pop", artist: ramones, genre: genres[16])
song4.vibes << vibes[0]

song5 = Song.create(title: "Backstreet's Back", artist: backstreet, genre: genres[0])
song5.vibes << vibes[11]
song5.vibes << vibes[0]


# song6 = Song.create(title: "Baby Got Back", artist: sir, genre: genres[4])
# song7 = Song.create(title: "Ain't No Mountain", artist: diana, genre: genres[17])
# song8 = Song.create(title: "Living La Vida Loca", artist: ricky, genre: genres[2])
# song9 = Song.create(title: "Chop Suey", artist: system_of, genre: genres[1])
# song10 = Song.create(title: "I Will Follow You Into the Dark", artist: deathcab, genre: genres[6])
# song11 = Song.create(title: "Hey Jude", artist: beatles, genre: genres[10])
# song12 = Song.create(title: "One Dance", artist: drake, genre: genres[8])
# song13 = Song.create(title: "Wonderwall", artist: oasis, genre: genres[5])
# song14 = Song.create(title: "Don't Look Back In Anger", artist: oasis, genre: genres[5])
# song15 = Song.create(title: "Girls Just Want To Have Fun", artist: cyndi, genre: genres[0])
# song16 = Song.create(title: "Hot and Cold", artist: katy, genre: genres[0])
# song17 = Song.create(title: "California Girls", artist: katy, genre: genres[0])
# song18 = Song.create(title: "True Colors", artist: cyndi, genre: genres[10])
# song19 = Song.create(title: "Love Story", artist: taylor, genre: genres[13])
#
# song20 = Song.create(title: "Shake It Out", artist: taylor, genre: genres[0])
# song21 = Song.create(title: "Baby", artist: supremes, genre: genres[14])
# song22 = Song.create(title: "Underneath It All", artist: gwen, genre: genres[12])
# song23 = Song.create(title: "Stop In The Name of Love", artist: supremes, genre: genres[14])
# song24 = Song.create(title: "Soul Meets Body", artist: deathcab, genre: genres[6])
