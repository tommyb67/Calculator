p "Would you like to add, subtract, multiply, divide, calc area, calc volume, calc fuel costs or calc annual simple interest?"
calc_choice = gets.chomp

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
  p "Enter 1st number"
  first_num = gets.chomp.to_i
  p "Enter 2nd number"
  second_num = gets.chomp.to_i

  puts add(first_num,second_num)

when "subtract"
  p "Enter 1st number"
  first_num = gets.chomp.to_i
  p "Enter 2nd number"
  second_num = gets.chomp.to_i

  puts subtract(first_num,second_num)

when "multiply"
  p "Enter 1st number"
  first_num = gets.chomp.to_i
  p "Enter 2nd number"
  second_num = gets.chomp.to_i

  puts multiply(first_num,second_num)

when "divide"
  p "Enter 1st number"
  first_num = gets.chomp.to_i
  p "Enter 2nd number"
  second_num = gets.chomp.to_i

  puts divide(first_num,second_num)

when "calc area"
  p "Enter length"
  length = gets.chomp.to_i
  p "Enter width"
  width = gets.chomp.to_i

  puts calc_area(length,width)

when "calc volume"
  p "Enter length"
  length = gets.chomp.to_i
  p "Enter width"
  width = gets.chomp.to_i
  p "Enter height"
  height = gets.chomp.to_i

  puts calc_volume(length,width,height)

when "calc fuel cost"
  p "Enter driving distance in miles"
  driving_distance = gets.chomp.to_i
  p "Enter miles per gallon"
  miles_gallon = gets.chomp.to_i
  p "Enter cost of a gallon of gas"
  cost_gas = gets.chomp.to_i

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



