# SongBang! an app for noraebang lovers

Songbang! is an app for Korean noraebang lovers. The Korean word noraebang literally means song room and is a place to go sing karaoke privately with just your friends.

Having a hard time at noraebang finding the number for the song you want to sing? Songbang! has user sourced information to make singing a breeze. Look for you favorite song by title, artist, genre, or vibe. Don't see the song you're looking for? If you find it, please add it to the collection.

[SongBang on Heroku](https://songbang.herokuapp.com/)

## Technology

This app is built on Ruby on Rails 5.1.4 using Bootstrap as a framework
Additional gems added were:
* devise
* bootstrap 4.0.0
* jquery-rails

## Using This Repo Locally
1. Fork & Clone
2. cd into song_bang
3. bundle install
4. rails  db:drop db:create db:migrate db:seed
5. rails s
6. open localhost:3000 in your browser


## Deployment Instructions
[Instructions to Deploy on Heroku](https://devcenter.heroku.com/articles/getting-started-with-rails5)

## Future Features
* Add sort by when the song was created
* Create a menu that would show views for most recent songs added, and other categories
* Keep track of noraebang locations, show location map, and allow reviews
* Implement user profiles to allow users to edit & delete songs they created, as well as create their own private vibe lists, and keep track of any songs they liked
* Would be great to find an API for Noraebang songs and include it in my site
* Link to music streaming API to show artist photos, and include more artist info
* Possibly add an aside that would just link to an API for Karaoke to show newest songs

## Future Fixes
* refactor code
* cleanup code

