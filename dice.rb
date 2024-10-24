require "sinatra"

get ("/") do
  "Hello World"
end

get("/zebra") do
  "We must add a route for each path we want to support"
end

require "sinatra/reloader"

get("/giraffe") do
  "Hopefully this shows up without restarting the server"
end

get("/dice/2/6") do
  first_dice = rand(1..6)
  second_dice = rand(1..6)
  sum = first_dice + second_dice

  outcome = "You rolled a #{first_dice} and a #{second_dice} for a total of #{sum}."

  "<h1>2d6<h/1>
  <p>#{outcome}</p>"
end

get("/dice/2/10") do
  first_dice = rand(1..10)
  second_dice = rand(1..10)
  sum = first_dice + second_dice

  outcome = "You rolled a #{first_dice} and a #{second_dice} for a total of #{sum}"
end

get("/dice/1/10") do
  dice = rand(1..10)

  outcome = "You rolles a #{dice}"
end

get("/dice/5/4") do
  first_dice = rand(1..4)
  second_dice = rand(1..4)
  third_dice = rand(1..4)
  fourth_dice = rand(1..4)
  fifth_dice = rand(1..4)

  sum = first_dice + second_dice + third_dice + fourth_dice + fifth_dice

  outcome = "You rolled a #{first_dice}, a #{second_dice}, a #{third_dice}, a #{fourth_dice}, and a #{fifth_dice}, for a total of #{sum}"
end

