# movie_search.rb
require "imdb"

class MoviesSearch
  attr_reader :movies
  def initialize 
    @movies = []
    @question = ''
  end 

  def movie_with_poster(userinput)
   @movies = Imdb::Search.new(userinput).movies.take(15)
    @movies.select {|movie| movie.poster != nil }.take(9)
  end

  def years
    years = @movies.map { |movie| movie.year }
    years.sample
  end 

end 

