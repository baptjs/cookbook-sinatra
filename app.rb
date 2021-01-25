require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"
require_relative '../../01-Cookbook-Advanced/lib/cookbook'
configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

get '/' do

  # csv_file   = File.join(__dir__, 'recipes.csv')
  # cookbook   = Cookbook.new(csv_file)
  # cookbook.all.each{ |recipe| puts recipe.name }
  [1,2,3].each{ |i|  "<p>hey</p>"}
  "<p> Hello </p>"
  # erb :index

end

get '/about' do
  # "<h1>Hello</h1>"
  # erb :about
end

get '/team/:username' do
  puts params[:username]
  "The username is #{params[:username]}"
end
