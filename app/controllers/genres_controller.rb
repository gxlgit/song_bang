class GenresController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @genres = Genre.all.sort{|a,b| a.name.downcase <=> b.name.downcase }
  end

  def show
    @genre = Genre.find(params[:id])

    # https://richonrails.com/articles/sortable-table-columns
    if sort_column == 'title'
      if sort_direction == 'asc'
        @songs = @genre.songs.sort{|a,b| a.title.downcase <=> b.title.downcase }
      else
        @songs = @genre.songs.sort{|a,b| b.title.downcase <=> a.title.downcase }
      end
    else
      @songs = @genre.songs.order("#{sort_column} #{sort_direction}")
    end
  end

  private
    def sortable_columns
      ["title", "num", "likes"]
    end

    def sort_column
      sortable_columns.include?(params[:column]) ? params[:column] : "title"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

end
