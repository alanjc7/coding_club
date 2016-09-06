# these are variables
my_name = "Alan"

print "What's your name?"

puts my_name

# you can use variables inside strings - this is called sting interpretation

sandwich_number = 2

drinks_number = 1

sandwich_calories = 200

drinks_calories = 100

total_calories = sandwich_number*sandwich_calories + drinks_number*drinks_calories

calorie_allowance = 1500

puts "Today I ate #{sandwich_number} sandwiches and drank #{drinks_number} drinks."
puts "Which means my total calories was #{total_calories}"
print "Is this withing my daily allowance?"
puts " #{total_calories < calorie_allowance}".upcase

# single quotations will only print static text
puts 'hello'
puts '3 + 3 = #{3+3}'

# double quotations can compute string interpretation
puts "3+3 = #{3+3}"

# % is modulous - this gives the remainder of a division
puts "#{10 % 3}" #10/3 will have 1 remainder

#ruby will only return intergers unless you use a float (.0)

