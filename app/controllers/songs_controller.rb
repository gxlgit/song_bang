class SongsController < ApplicationController

  def index
    @songs = Song.all.order(:title)
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
      @song = Song.create!(song_params)


      puts 'VIBESVIBES!!!!!!!!!!!!!!!'
      puts params[:title]
      @vibe = Vibe.find('5')
      # @vibes.each do |vibe|
        puts @vibe.id
        puts @vibe.name
      # end

      # for now only allow one vibe to be selected
      @song.vibes << Vibe.find('5')
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
