#iterators allow you to iterate through an array - repeat a process
#we can interate through an array using a block

onfidoers = ["Husayn", "Eamon", "Ruhul"]

onfidoers.each { |onfidoer| puts "onfidoer name: #{onfidoer}"}

puts "__________________________"

menu = ["Pizza", "Ravioli", "Risotto"]
menu.each {|x| puts "Ciao, the dish of the day is #{x}"}


puts "__________________________"

#Blocks can be multiple lines
index = 1
puts "Who are the Onfido Co-founders?"
onfidoers.each do |onfidoer|
	puts "Co-founders #{index}: #{onfidoer}"
	index = index + 1
end

#find three different array methods and figure out how they work, put them in the challenge folder and comment what it is doing