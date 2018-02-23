Genre.destroy_all
Vibe.destroy_all
Artist.destroy_all
Song.destroy_all


vibes = [  "Start This Party",
          "Love Songs",
          "Power Ballads", #2
          "Slow Jams",
          "Group Sing-a-long", #4
          "Songs You Don't Actually Know the Words To",
          "Breakup",
          "Disney",    #7
          "80s Dance Party",
          "Grunge Era", #9
          "90s Hip Hop Fever",
          "00s Popalicious", #11
          "So Emo",
          "Best Air Guitar Solos", #13
          "Classics You Should Know",
          "Pants Off Dance Off" #14,
          "Girl Power",
          "Oldies But Goodies"
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

cardigans = Artist.create(name: "The Cardigans", down_name: "the cardigans", img_url: "https://i.pinimg.com/736x/74/5c/67/745c67da54ad2b8bd14ff9b38e3b56f7--my-music-nina-persson.jpg")
queen = Artist.create(name: "Queen", down_name: "queen",img_url: "https://ohfact2-cyberpanthers.netdna-ssl.com/wp-content/uploads/2016/06/queen_the_band.jpg")
journey = Artist.create(name: "Journey", down_name: "journey",img_url: "")
cyndi = Artist.create(name: "Cyndi Lauper", down_name: "cyndi lauper",img_url: "")
katy = Artist.create(name: "Katy Perry", down_name: "katy perry",img_url: "")
gwen = Artist.create(name: "No Doubt", down_name: "no doubt",img_url: "")
oasis = Artist.create(name: "Oasis", down_name: "oasis",img_url: "")
drake = Artist.create(name: "Drake", down_name: "drake",img_url: "")
sir = Artist.create(name: "Sir Mix-a-Lot", down_name: "sir mix-a-lot",img_url: "")
beatles = Artist.create(name: "The Beatles", down_name: "the beatles",img_url: "")
taylor = Artist.create(name: "Taylor Swift", down_name: "taylor swift",img_url: "")
deathcab = Artist.create(name: "Death Cab For Cutie", down_name: "death cab for cutie",img_url: "")
ricky = Artist.create(name: "Ricky Martin", down_name: "ricky martin",img_url: "")
system_Of = Artist.create(name: "System of a Down", down_name: "system of a down",img_url: "")
diana = Artist.create(name: "Diana Ross", down_name: "diana ross",img_url: "")
supremes = Artist.create(name: "The Supremes", down_name: "the supremes",img_url: "")
ramones = Artist.create(name: "The Ramones", down_name: "the ramones",img_url: "")
backstreet = Artist.create(name: "Backstreet Boys", down_name: "backstreet boys",img_url: "")
thirdeye = Artist.create(name: "Third Eye Blind", down_name: "thirdeye blind",img_url: "")

song1 = Song.create(title: "Love Fool", num: 20786, artist: cardigans, genre: genres[5])
song1.vibes << vibes[4]

song2 = Song.create(title: "I'm Just A Girl", num: 60938, artist: gwen, genre: genres[12])
song2.vibes << vibes[9]

song3 = Song.create(title: "Don't Stop Believin", num: 60905, artist: journey , genre: genres[10])
song3.vibes << vibes[4]

song4 = Song.create(title: "Blitzreig Pop", num: 60696, artist: ramones, genre: genres[16])
song4.vibes << vibes[0]

song5 = Song.create(title: "Everybody (Backstreet's Back)", num: 20723, artist: backstreet, genre: genres[0])
song5.vibes << vibes[11]
song5.vibes << vibes[0]


song6 = Song.create(title: "Baby Got Back", num: , artist: sir, genre: genres[4])
song6.vibes << vibes[5]
song6.vibes << vibes[10]

song7 = Song.create(title: "Ain't No Mountain", num: 21006, artist: diana, genre: genres[17])
song7.vibes << vibes[1]

song8 = Song.create(title: "Living La Vida Loca", num: 20675, artist: ricky, genre: genres[2])
song8.vibes << vibes[11]
song8.vibes << vibes[14]

song9 = Song.create(title: "Chop Suey", num: 61608, artist: system_of, genre: genres[1])

song10 = Song.create(title: "I Will Follow You Into the Dark", num: 21552, artist: deathcab, genre: genres[6])
song10.vibes << vibes[12]
song10.vibes << vibes[3]
song10.vibes << vibes[1]

song11 = Song.create(title: "Hey Jude", num: 21325, artist: beatles, genre: genres[10])
song11.vibes << vibes[13]
song11.vibes << vibes[3]

song12 = Song.create(title: "What's My Name?", num: 84860, artist: drake, genre: genres[8])
song12.vibes << vibes[14]

song13 = Song.create(title: "Wonderwall", num: 25701, artist: oasis, genre: genres[5])
song13.vibes << vibes[9]
song13.vibes << vibes[2]
song13.vibes << vibes[4]

song14 = Song.create(title: "Don't Look Back In Anger", num: 24544, artist: oasis, genre: genres[5])
song14.vibes << vibes[3]
song14.vibes << vibes[9]
song14.vibes << vibes[4]
song14.vibes << vibes[13]

song15 = Song.create(title: "Girls Just Want To Have Fun", num: 8074, artist: cyndi, genre: genres[0])
song15.vibes << vibes[0]
song15.vibes << vibes[8]
song15.vibes << vibes[15]
song5.vibes << vibes[4]

song16 = Song.create(title: "Hot N Cold", num: 22575, artist: katy, genre: genres[0])
song16.vibes << vibes[11]

song17 = Song.create(title: "California Girls", num: 35091, artist: katy, genre: genres[0])
song17.vibes << vibes[15]

song18 = Song.create(title: "True Colors", num: 25264 , artist: cyndi, genre: genres[10])
song18.vibes << vibes[1]
song18.vibes << vibes[2]
song18.vibes << vibes[3]

song19 = Song.create(title: "Love Story", num: 22608, artist: taylor, genre: genres[13])
song19.vibes << vibes[1]
song19.vibes << vibes[15]

song20 = Song.create(title: "Shake It Off", num: 74694, artist: taylor, genre: genres[0])
song20.vibes << vibes[0]
song20.vibes << vibes[14]
song20.vibes << vibes[15]

song21 = Song.create(title: "Baby Love", num: , artist: supremes, genre: genres[14])
song21.vibes << vibes[14]
song21.vibes << vibes[1]

song22 = Song.create(title: "Underneath It All", num: 61163, artist: gwen, genre: genres[12])
song22.vibes << vibes[2]

song23 = Song.create(title: "Stop In The Name of Love", num: 8200, artist: supremes, genre: genres[14])
song23.vibes << vibes[1]
song23.vibes << vibes[4]
song23.vibes << vibes[16]

song24 = Song.create(title: "Soul Meets Body", num: , artist: deathcab, genre: genres[6])
song24.vibes << vibes[1]
song24.vibes << vibes[2]

song25 = Song.create(title: "Semi-Charmed Life", num: 72446, artist: thirdeye, genre: genres[5])
song25.vibes << vibes[4]
song25.vibes << vibes[0]
