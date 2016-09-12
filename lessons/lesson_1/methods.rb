def method_that_says_hello #header
	puts "Hello" #body
end #this is the end of the method

def method_that_says(stuff)
	puts (stuff)
end

#calling your method will carry out the operation defined in the body of the method

method_that_says_hello

method_that_says("lets code!")

def addition(number_one, number_two)
	puts "#{number_one+number_two}"
end

addition(3, 4)
addition("a", "c")

