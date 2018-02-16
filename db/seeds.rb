Genre.destroy_all
Vibe.destroy_all
Artist.destroy_all
Song.destroy_all


vibes = [  "Start This Party",
          "Love Songs",
          "Power Ballads",
          "Slow Jams",
          "Group Sing-a-long",
          "Songs You Don't Actually Know the Words To",
          "Breakup",
          "Disney",
          "80s Dance Party",
          "Grunge Era",
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
          "Alternative",
          "Indie",
          "Broadway",
          "Hip Hop",
          "Blues",
          "Soft Rock",
          "Reggae",
          "Ska",
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
