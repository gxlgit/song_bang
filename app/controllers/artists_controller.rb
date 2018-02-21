class ArtistsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    # https://stackoverflow.com/questions/19780148/how-to-sort-movies-alphabetically-in-rails
    @artists = Artist.all.sort{|a,b| a.name.downcase <=> b.name.downcase }
    # .order('name ASC')

  end

  def show
    @artist = Artist.find(params[:id])

    # https://richonrails.com/articles/sortable-table-columns
    if sort_column == 'title'
      if sort_direction == 'asc'
        @songs = @artist.songs.sort{|a,b| a.title.downcase <=> b.title.downcase }
      else
        @songs = @artist.songs.sort{|a,b| b.title.downcase <=> a.title.downcase }
      end
    else
      @songs = @artist.songs.order("#{sort_column} #{sort_direction}")
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


# class ProductsController < ApplicationController
#
#   def index
#     @products = Product.order("#{sort_column} #{sort_direction}")
#   end
# private
#   def sortable_columns
#     ["name", "price"]
#   end
#
#   def sort_column
#     sortable_columns.include?(params[:column]) ? params[:column] : "name"
#   end
#
#   def sort_direction
#     %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
#   end
# end
