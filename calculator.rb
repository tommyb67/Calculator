# build a simple calculator
# ask the end user what calculation he/she would like to perform

puts "Would you like to:
add \n
subtract \n
multiply \n
divide \n
calc area \n
calc volume \n
calc fuel cost \n
calc annual simple interest?"
calc_choice = gets.chomp.downcase

# Create functions for 2 or 3 input parameters, which will be supplied by the user

def two_inputs
  puts "Enter the first number"
  first = gets.chomp.to_f
  puts "Enter the second number"
  second = gets.chomp.to_f
  return first, second
end

def three_inputs
  puts "Enter the first number"
  first = gets.chomp.to_f
  puts "Enter the second number"
  second = gets.chomp.to_f
  puts "Enter the third number"
  third = gets.chomp.to_f
  return first, second, third
end

def fuel_cost
  puts "How many miles do you plan to drive?"
  first = gets.chomp.to_f
  puts "How many miles do you get per gallon?"
  second = gets.chomp.to_f
  puts = "How much does a gallon of gas cost?"
  third = gets.chomp.to_f
  return first, second, third
end


# Create functions for each type of calculation

def add(x,y)
  return x+y
end

def subtract(x,y)
  return x-y
end

def multiply(x,y)
  return x*y
end

def divide(x,y)
  return x/y
end

def calc_area(x,y)
  return x*y
end

def calc_volume(x,y,z)
  return x*y*z
end

def calc_fuel_cost(x,y,z)
  return x/y*z
end

def calc_annual_simple_interest(x,y)
  return x*(y/100)
end

# Create the case statement, using the functions already created

case calc_choice
when "add"
  x, y = two_inputs
  puts add(x,y)

when "subtract"
  x, y = two_inputs
  puts subtract(x,y)

when "multiply"
  x, y = two_inputs
  puts multiply(x,y)

when "divide"
  x, y = two_inputs
  puts divide(x,y)

when "calc area"
  x, y = two_inputs
  puts calc_area(x,y)

when "calc volume"
  x, y, z = three_inputs
  puts calc_volume(x,y,z)

when "calc fuel cost"
  x, y, z = fuel_cost
  puts calc_fuel_cost(x,y,z)

when "calc annual simple interest"
  x, y = two_inputs
  puts calc_annual_simple_interest(x,y)

else
  p "Please choose one of the stated choices"

end