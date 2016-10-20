#hash is between curly brackets

#create an empty hash
empty_hash = {}

another_empty_hash = Hash.new

#create a hash with a couple of keys
one_line_hash = {'name' => 'Alan', 'surname' => 'Carrie'}

#create muliple line hash
an_onfidoer = {
	'name' => 'Jack',
	'surname' => 'Baverstock',
	'date_joined' => '25 August 2015',
	'team' => 'RegTech',
	'department' => 'Operations'
}

#add a new key to the hash

one_line_hash['department'] = 'Operations'

#get value of a key inside a hash
puts one_line_hash['name']

#delete stuff from a hash (delete key and value pair)
an_onfidoer.delete('team')

new_hash = { :my_symbol => "whatever value"}
new_hash = { my_symbol: "another way"}

puts new_hash
