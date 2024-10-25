require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/") do
  erb(:elephant)
end

get("/dice/2/6") do
  first_dice = rand(1..6)
  second_dice = rand(1..6)
  sum = first_dice + second_dice

  @outcome = "You rolled a #{first_dice} and a #{second_dice} for a total of #{sum}."

  erb(:two_six)
end

get("/dice/2/10") do
  first_dice = rand(1..10)
  second_dice = rand(1..10)
  sum = first_dice + second_dice

  @outcome = "You rolled a #{first_dice} and a #{second_dice} for a total of #{sum}"

  erb(:two_ten)
end

get("/dice/1/20") do
  @dice = rand(1..20)

  @outcome = "You rolled a #{@dice}"
  erb(:one_twenty)

end

get("/dice/5/4") do
  first_dice = rand(1..4)
  second_dice = rand(1..4)
  third_dice = rand(1..4)
  fourth_dice = rand(1..4)
  fifth_dice = rand(1..4)

  sum = first_dice + second_dice + third_dice + fourth_dice + fifth_dice

  @outcome = "You rolled a #{first_dice}, a #{second_dice}, a #{third_dice}, a #{fourth_dice}, and a #{fifth_dice}, for a total of #{sum}"

  erb(:five_four)
end

get("/dice/100/6") do
  @rolls = []

  100.times do
    dice = rand(1..6)

    @rolls.push(dice) 
  end

  erb(:one_hundred_six)
end
