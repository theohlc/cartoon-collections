def roll_call_dwarves(dwarves)
  dwarves.each_with_index do |name, i|
    puts "#{i + 1}. #{name}"
  end
end

def summon_captain_planet(summons)
  summons.collect do |word|
    word = word + "!"
    word = word.capitalize
  end
end

def long_planeteer_calls(calls)
  !calls.all? do |word|
    word.length <= 4
  end
end

def find_the_cheese(cheeses)
  # the array below is here to help
  cheese_types = ["cheddar", "gouda", "camembert"]
  i = 0
  first_cheese = nil

  while first_cheese == nil
    first_cheese = cheese_types[i] if cheeses.include?(cheese_types[i])
    i += 1
    puts first_cheese
    break if i > cheeses.length 
  end

  first_cheese
end