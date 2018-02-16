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
          "Indie",
          "Broadway",
          "Hip Hop",
          "Blues",
          "Soft Rock",
          "Reggae",
          "Ska", #12
          "Country",
          "Soul",
          "Funk",
          "Punk",
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


Song.create(name: "Love Fool", artist: cardigans, genre: genres[5], vibe: vibes[4])
Song.create(name: "I'm Just A Girl", artist: gwen, genre: genre[12], vibe: vibes[9])
Song.create(name: "", artist: , genre: genre[], vibe: vibes[])
Song.create(name: "", artist: , genre: genre[], vibe: vibes[])
Song.create(name: "", artist: , genre: genre[], vibe: vibes[])
Song.create(name: "", artist: , genre: genre[], vibe: vibes[])
Song.create(name: "", artist: , genre: genre[], vibe: vibes[])
Song.create(name: "", artist: , genre: genre[], vibe: vibes[])
Song.create(name: "", artist: , genre: genre[], vibe: vibes[])
Song.create(name: "", artist: , genre: genre[], vibe: vibes[])
Song.create(name: "", artist: , genre: genre[], vibe: vibes[])
Song.create(name: "", artist: , genre: genre[], vibe: vibes[])
Song.create(name: "", artist: , genre: genre[], vibe: vibes[])
Song.create(name: "", artist: , genre: genre[], vibe: vibes[])
Song.create(name: "", artist: , genre: genre[], vibe: vibes[])
Song.create(name: "", artist: , genre: genre[], vibe: vibes[])
Song.create(name: "", artist: , genre: genre[], vibe: vibes[])
Song.create(name: "", artist: , genre: genre[], vibe: vibes[])
