require_relative './onfidoer'
require_relative './groups_generator'

filename = ARGV[0]
group_num = ARGV[1].to_i

def get_lines_from(filename)
	file = open(filename) #open file
	text = file.read	#read file
	text.split("\n")	#split at new line
end

#From each line we want to get the values to create a new onfidoer
def get_params_from(line)
	values = line.split(",")
	values.map { | value | value.strip } #strip removes the whitespaces. could be written like `values.map(&:split)`
end

#Create new Onfidoer using the values of each line
def create_onfidoers(filename)
	lines = get_lines_from(filename)
	#iterate over each line and create new Onfidoer with the params 
	lines.map do | line | 
		params = get_params_from(line)
		onfidoer = Onfidoer.new(*params) # * is a splat operator
		"#{onfidoer.first_name} #{onfidoer.last_name}"
	end
end

onfidoers = create_onfidoers(filename)

def generate_groups(onfidoers, num)
	new_group = GroupGenerator.new(onfidoers)
	#new_group.display_groups(num)
	new_group.save_groups_to_csv(num)
	#new_group.get_groups_of(num)
end

generate_groups(onfidoers, group_num)




