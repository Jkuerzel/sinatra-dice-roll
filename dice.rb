# /dice.rb

require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get '/' do

  erb(:elephant)

end


get '/zebra' do
  "We must add a route for each path"
end

get '/giraffe' do
  "Hopefully this shows up without having to restart the server"
end

get ("/dice/2/6") do
  first_die=rand(1..6)
  second_die=rand(1..6)
  sum=first_die+second_die
  @outcome="You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

  erb(:two_six)
end

get ("/dice/2/10") do
  first_die=rand(1...10)
  second_die=rand(1...10)

  sum=first_die+second_die
  outcome="you rolled a #{first_die} and a #{second_die} and got #{sum}"

  "<h2>2d10</h2>
  <p>#{outcome}</p>"
end

get ("/dice/1/20") do
  first_die=rand(1...20)
  outcome="You rolled a #{first_die}."

  "<h2>1d20</h2>
  <p>#{outcome}</p>"
end


get ("/dice/5/4") do
  first_die=rand(1...4)
  second_die=rand(1...4)
  third_die=rand(1...4)
  fourth_die=rand(1...4)
  fivth_die=rand(1...4)
  sum=first_die+second_die+third_die+fourth_die+fivth_die
  outcome="You rollen a #{first_die}, #{second_die}, #{third_die}, #{fourth_die} and a #{fivth_die}, which is in total #{sum}"

  "<h2>5d4</h2>
  <p>#{outcome}</p>"
end
