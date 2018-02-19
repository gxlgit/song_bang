class VibesController < ApplicationController

  def index
    @vibes = Vibe.all.order(:name)
  end

  def show
    @vibe = Vibe.find(params[:id])
    @songs = @vibe.songs
  end

end
