class SongsController < ApplicationController

  def index
    # https://www.ruby-forum.com/topic/83451
    @songs = Song.all.sort{|a,b| a.title.downcase <=> b.title.downcase }
  end

  def show
    @song = Song.find(params[:id])
    # puts 'VIBESVIBES!!!!!!!!!!!!!!!'
    # @vibes = Vibe.all
    # @song.vibes.each do |vibe|
    #   puts vibe.id
    #   puts vibe.name
    # end
  end


  def new
      @song = Song.new
  end

  # def create
  #   new_house_id = rand(1..4)
  #   params[:student][:house_id] = new_house_id
  #
  #   # @student = Student.create!(name: params[:artist][:name],
  #   #                         nationality: params[:artist][:nationality],
  #   #                         photo_url: params[:artist][:photo_url])
  #   @student = Student.create(student_params)
  #   redirect_to student_path(@student)
  # end

  def create
    # find Artist by Name
    # if artist exists ad that artist by id
    # else make a new id

      @artist = Artist.find_by(down_name: params[:song][:artist].downcase)
      if @artist
        params[:song][:artist_id] = @artist.id
      else
        params[:song][:artist_id] = Artist.create!(name: params[:song][:artist], down_name: params[:song][:artist].downcase).id
      end
        @song = Song.create!(song_params)


      # puts 'VIBESVIBES!!!!!!!!!!!!!!!'
      # puts params[:song][:vibe_ids]
      # puts '-------------'
      # # @vibe = Vibe.find('5')
      # # @vibes.each do |vibe|
      #   # puts @vibe.id
      #   # puts @vibe.name
      # # end



      # first remove any blank selections
      #then find those vibes and add them to the song 
      the_vibes =params[:song][:vibe_ids].reject(&:blank?)
      @song.vibes << Vibe.find(the_vibes)
      redirect_to song_path(@song)
  end

  def likePost
    puts 'liked'
    # function to increase and record a like on a song
  end

  private
    def song_params
      params.require(:song).permit(:title, :num, :genre_id, :artist_id)
    end
end
