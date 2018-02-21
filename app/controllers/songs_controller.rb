class SongsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    # https://www.ruby-forum.com/topic/83451
    if sort_column == 'title'
      if sort_direction == 'asc'
        @songs = Song.all.sort{|a,b| a.title.downcase <=> b.title.downcase }
      else
        @songs = Song.all.sort{|a,b| b.title.downcase <=> a.title.downcase }
      end
    elsif sort_column == 'artist'
      if sort_direction == 'asc'
        @songs = Song.all.sort{|a,b| a.artist.name.downcase <=> b.artist.name.downcase }
      else
        @songs = Song.all.sort{|a,b| b.artist.name.downcase <=> a.artist.name.downcase }
      end
    else
      @songs = Song.all.order("#{sort_column} #{sort_direction}")
    end

  end


  def show
    @song = Song.find(params[:id])
  end


  def new
      @song = Song.new
  end


  def create
    # find Artist by Name
    # if artist exists ad that artist by id
    # else make a new id
    params[:song][:title].strip!
    if params[:song][:title] == ''
      flash[:alert] = "Title Can Not Be Blank"
      redirect_back(fallback_location: root_path) and return
    end

    artist_name = params[:song][:artist].strip
    if artist_name == ''
      flash[:alert] = "Artist Can Not Be Blank"
      redirect_back(fallback_location: root_path) and return
    end


      @artist = Artist.find_by(down_name: artist_name.downcase)
      if @artist
        params[:song][:artist_id] = @artist.id
      else
        params[:song][:artist_id] = Artist.create!(name: artist_name, down_name: artist_name.downcase).id
      end
        @song = Song.create!(song_params)

      # first remove any blank selections
      #then find those vibes and add them to the song
      the_vibes =params[:song][:vibe_ids].reject(&:blank?)
      @song.vibes << Vibe.find(the_vibes)
      redirect_to song_path(@song)
  end

  def liked
    @song = Song.find(params[:id])
    # function to increase and record a like on a song
    @song.increment(:likes)
    @song.save
    redirect_to song_path(@song)
  end

  private
    def song_params
      params.require(:song).permit(:title, :num, :genre_id, :artist_id)
    end

    def sortable_columns
      ["title", "artist", "num", "likes"]
    end

    def sort_column
      sortable_columns.include?(params[:column]) ? params[:column] : "title"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end
