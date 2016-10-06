#1. Define a function that checks if a number is divisible by 3. It should take one argument. It should return true or false
def div_by_3(number)
	ans = number % 3
	if ans == 0
		a = true
	else a = false
	end
	return a
end

puts div_by_3(99)

puts "_____________________________"

#2. Define a function that checks if a number is divisible by 5. It should take one argument. It should return true or false
def div_by_5(number)
	ans = number % 5
	if ans == 0
		a = true
	else a = false
	end
	return a
end

puts div_by_5(100)

puts "_____________________________"

#3. Define a function that checks if a number is divisible by 3 and 5. It should take one argument. It should return true or false
def div_by_3_5(number)
	div3 = number % 3
	div5 = number % 5
	if div3 == 0 and div5 == 0
		a = true
	else a = false
	end
	return a
end

puts div_by_3_5(15)

#testing if it will work using the functions I already defined

def d_3_5(number)
	d3 = div_by_3(number)
	d5 = div_by_5(number)
	if d3 == true and d5 == true
		a = true
	else a = false
	end
	return a
end

puts d_3_5(15)

puts "_____________________________"

#4. Define a function that returns 'Fizz' if a number is divisible by 3, 'Buzz' if a number is divisible by 5 and it returns 'FizzBuzz' if the number is divisible by both 3 and 5.
def fizz_or_buzz(number)
	d3 = div_by_3(number)
	d5 = div_by_5(number)
	if d3 == true and d5 == true
		a = "FizzBuzz"
	elsif d3 == true and d5 == false
		a = "Buzz"
	elsif d3 == false and d5 == true
		a = "Fizz"
	else a = number #this was added as part of challenge 5
	end
	return a
end

puts fizz_or_buzz(15)

puts "_____________________________"

#6. Can you remember a way of having all the numbers from 0 to 30 into an array without having to type each number? (Hint: Google 'ruby range')
onetothirty = (0..30).to_a

#puts onetothirty

#5. Given an array containing numbers from 0 to 30, return a new array where every number divisible by 3 has been replaced by 'Fizz', every number divisible by 5 has been replaced by 'Buzz' and every number divisible by both 3 and 5 has been replaced by 'FizzBuzz'.

fizzbuzz30 = onetothirty.map { |e| fizz_or_buzz(e) }

puts fizzbuzz30

puts "_____________________________"
