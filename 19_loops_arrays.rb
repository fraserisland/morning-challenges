# - create a well named variable that contains the amount of time it took you to get to class
# - create a complete sentence that lets us know how you got to class and how long it took
# - print this complete sentence

# you are working at a bar where you have a current backlog of drinks to make:
# 3 party parrot cocktails
# 2 party parrot waters
# and
# 6 party parrot beers

# write a program that asks the customer for their order.
# if they order a party parrot cocktail, add one to the number of party parrot cocktails you need to make,
# if they order a party parrot water, add one to the number of party parrot waters you need to make,
# if they order a party parrot beer, add one to the number of party parrot beers you need to pour

# print the final drinks order so you know what to make

# ****
# cocktails sell for $22, and cost $8 to make
# beer sell for $12, and cost $3 to pour
# water sell for $6, and cost $0.15 to make

# print out the total profit for the orders you have


cocktailProf = 14
beerProf = 9
waterProf = 5.45
profitTotal = 0
menu = {waters: 0, cocktails: 0, beers: 0}

puts "What would you like to order?"
order = gets.chomp!

loop do
  if order == "party parrot cocktail"
      menu[:cocktails] +=1
      profitTotal += cocktailProf
    elsif order == "party parrot water"
      menu[:waters] +=1
        profitTotal += waterProf
    elsif order == "party parrot beer"
      menu[:beers] +=1
        profitTotal += beerProf
    else "sorry we dont have that"
  end

  puts "would you like anything else?"
  anythingElse = gets.chomp!.downcase

    if anythingElse == "no"
      break
    else puts "What would you like to order?"
  end
end

puts "your total profit is $#{profitTotal}"
