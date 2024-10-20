# /dice.rb

require "sinatra"
require "sinatra/reloader"

get '/' do
  "Hello World"
end


get '/zebra' do
  "We must add a route for each path"
end

get '/giraffe' do
  "Hopefully this shows up without having to restart the server"
end
