class GenresController < ApplicationController

  def index
    @genres = Genre.all.sort{|a,b| a.name.downcase <=> b.name.downcase }
  end

  def show
    @genre = Genre.find(params[:id])
    @songs = @genre.songs
  end

end
