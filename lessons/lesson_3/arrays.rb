onfidoer1 = "Stefania"
onfidoer2 = "Rid"
onfidoer3 = "Shakes"

#defining / declaring an array
onfidoers = ["Stefania", "Rid", "Shakes"]
puts onfidoers

puts "________________________"
#Arrays can contain any values
intergers = [1, 2, 3, 4, 5]
puts intergers

lunch_money = [3.50, 6.75]
puts lunch_money

puts "________________________"
#Arrays can be empty 
empty_array = []
puts empty_array

#to read elements of an array
first_element = onfidoers[0]
puts first_element
second = onfidoers[1]
puts second
third = onfidoers[2]
puts third

#to add an element to an existing array
onfidoers << "Laura"
puts onfidoers
new_onfidoer = "Daniel"
onfidoers << new_onfidoer
puts onfidoers

puts "________________________"
#to delete an item
onfidoers.delete_at(0)
puts onfidoers


puts "_________________________"
onfidoers.delete_at(1)
puts onfidoers


puts "__________________________"
sentence = "This is a sentence"
words = sentence.split(" ")
puts words

puts words.class
