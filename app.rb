# app.rb
require("imdb")
require 'sinatra'
require_relative("lib/movie_search.rb")


# The .movies method returns the array that contains the results

# The Imdb::Movie class contains the movie info
    # Documentation -> http://www.rubydoc.info/github/ariejan/imdb/master/Imdb/Movie
# puts "First result:"
# puts first_result.title
# puts first_result.rating

game1 = MoviesSearch.new


get "/" do
  erb(:home)
end

post "/display_movies" do 
  @movies = game1.movie_with_poster(params[:words])
  # @years = @movies.years
  @years = @movies.sample.year 
  erb(:display_movies)
end 
