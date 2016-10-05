=begin
Created for comments
Exercise 1:*
Given an array, return a new array containing only the elements that starts with 'a’
For example, an array like `['bananas', 'apples', 'pears', 'avocados']` should return `['apples', 'avocados']`
=end
puts "Exercise_1"
fruit = ['apples', 'bananas', 'avocados', 'pears', 'apricot', 'pineapple', 'mango']
#fruit.select { |starts_a| puts starts_a.start_with?("a") } this one put whether or not it started with 'a'
#a_fruits = fruit.select { |a| a[0] == "a" } my first way of doing it
a_fruits = fruit.select { |a| a =~ /^a/ } #my improved way
puts a_fruits

puts "________________________"

=begin
*Exercise 2:*
Given an array, return a new array containing only the elements that starts with a vowel
`["john", "david", "omar", "fred", "idris", "angela"]` should return `["omar","idris", "angela"]`
=end
puts "Exercise_2"
colours = ["green", "yellow", "aqua", "blue", "orange", "red", "purple", "indigo"]
vowels = ["a", "e", "i", "o", "u"]
vowel_colours = colours.select { |v| v.start_with?('a','e','i','o','u') }
puts vowel_colours

puts "________________________"

=begin
*Exercise 3:*
Given an array, return a new array by discarding the first 3 elements of the original array
e.g. `[1, 2, 3, 4, 5, 6]` becomes `[4, 5, 6]`
=end
puts "Exercise_3"
instruments = ["violin", "trumpet", "flute", "guitar", "bass", "drums"]
band_instruments = instruments.drop(3)
puts band_instruments

puts "________________________"

=begin
*Exercise 4:*
Given an array of numbers, return a new array containing two arrays of numbers, one an array of even numbers and an array of odd numbers. Even numbers should come first
so `[1, 2, 3, 4, 5, 6]` should return `[[2, 4, 6], [1, 3, 5]]`
=end
puts "Exercise_4"
numbers = [1, 2, 3, 4, 5, 6]
#even_numbers = numbers.keep_if &:even? a destructive way of doing it
odd_numbers = numbers.select { |o| o.odd? }
even_numbers = numbers.select { |e| e.even? }
puts even_numbers
puts odd_numbers

puts "________________________"

=begin
*Exercise 5:*
Given an array of student names, like `['Bob', 'Dave', 'Clive']`
Create an array with every possible pairing - in this case:
`[['Bob', 'Clive'], ['Bob', 'Dave'], ['Clive', 'Dave']]`
Make sure you don't have the same pairing twice.
=end
puts "Exercise_5"
onfidoers = ["Alan", "Luke", "Sofian", "Stefania", "Jurkie", "Alfred"]
onfido_pairs = onfidoers.combination(2).to_a
puts onfido_pairs
#use .uniq? to test for no duplicates
