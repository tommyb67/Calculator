p "Would you like to \n
add \n
subtract \n
multiply \n
divide \n
calc area \n
calc volume \n
calc fuel costs \n
calc annual simple interest?"
calc_choice = gets.chomp.downcase

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


case calc_choice
when "add"
  x, y = two_inputs
  puts add(x,y)

when "subtract"
  x, y = two_inputs
  puts add(x,y)

when "multiply"
  x, y = two_inputs
  puts add(x,y)

when "divide"
  x, y = two_inputs
  puts divide(x,y)

when "calc area"
  x, y = two_inputs
  puts add(x,y)

when "calc volume"
  x, y, z = three_inputs
  puts add(x,y,z)

  puts calc_volume(length,width,height)

when "calc fuel cost"
  p "Enter driving distance in miles"
  driving_distance = gets.chomp.to_f
  p "Enter miles per gallon"
  miles_gallon = gets.chomp.to_f
  p "Enter cost of a gallon of gas"
  cost_gas = gets.chomp.to_f

  puts "Your trip will cost: $#{calc_fuel_cost(driving_distance,miles_gallon,cost_gas)}"

when "calc annual simple interest"
  p "enter current balance"
  current_balance = gets.chomp.to_f
  p "enter annual interest rate"
  annual_interest_rate = gets.chomp.to_f

  puts calc_annual_simple_interest(current_balance,annual_interest_rate/100)


else
  p "Please choose one of the stated choices"

end



