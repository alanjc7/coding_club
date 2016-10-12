#1) Implement a join function which takes as parameters an array of strings and a separator (" "), and returns the strings joined by the separator. 
#Example: my_join (["x", "y", "z"], "+") should return "x + y + z" (edited)

def my_join(array, separator)
	joined_string = array.join(separator)
end

puts my_join(["x", "y", "z"], "+")


spacer = "\n_____________________\n\n"
puts spacer

=begin
2) Write a method which, for a given number, print the multiplication table with the numbers from 0 to 10 and the input number
example:
print_multiply_table(10):
0 x 10 = 0
1 x 10 = 10
2 x 10 = 20
...
10 x 10 = 100
=end


def multiply_table(number)
	x = (0..10).to_a
	x.each { |i| puts "#{i} * #{number} = #{i * number}"}
end

multiply_table(10)


puts spacer

#3) Implement your own my_split_method(...) which splits a string at spaces
#input: "Mircea loves to code" --> ["Mircea", "loves", "to", "code"]

string = "Am I a software engineer yet?"

def split_method(strng)
	words = strng.split(" ")
	#words.class checking if it returned an array
end

puts split_method(string)
