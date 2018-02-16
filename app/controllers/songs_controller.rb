class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
    puts 'VIBESVIBES!!!!!!!!!!!!!!!'
    @vibes = Vibe.all
    @song.vibes.each do |vibe|
      puts 'vibe'
      puts vibe.name
    end
  end

end
