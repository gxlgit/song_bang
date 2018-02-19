class VibesController < ApplicationController

  def index
    @vibes = Vibe.all.sort{|a,b| a.name.downcase <=> b.name.downcase }
  end

  def show
    @vibe = Vibe.find(params[:id])
    @songs = @vibe.songs
  end

end
