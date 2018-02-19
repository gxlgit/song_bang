class VibesController < ApplicationController

  def index
    @vibes = Vibe.all
  end

  def show
    @vibe = Vibe.find(params[:id])

    # @vibe_name = Vibe.find(params[:id]).name
    # @vibe = Vibe.select(@vibe_name).distinct
    @songs = @vibe.songs
  end

end

# User.select(:name).distinct
