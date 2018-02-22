class SearchController < ApplicationController


  def index
    # Search for song by title
    # FIX IT should eventually return a list of songs in a table

    # https://rubyplus.com/articles/3381-Simple-Search-Form-in-Rails-5
    if params[:title]
      @song = Song.where('title LIKE ?', "%#{params[:title].strip.downcase.titleize}%").first

      if @song
        redirect_to song_path(@song)
      else
        # FIX IT should eventually go to a song not found page
        redirect_back(fallback_location: root_path)
      end
    end

  end
end
