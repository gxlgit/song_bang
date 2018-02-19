class ArtistsController < ApplicationController

  def index
    # https://stackoverflow.com/questions/19780148/how-to-sort-movies-alphabetically-in-rails
    @artists = Artist.all.sort{|a,b| a.name.downcase <=> b.name.downcase }
    # .order('name ASC')
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
  end

end
