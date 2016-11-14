#take a CSV file of Onfidoers and split them into separate instances of Onifdoer Class
#read lines from file

require_relative "./onfidoer"

filename = ARGV.first

def get_file_lines(file_name)
	file = open(file_name)
	text = file.read
	lines = text.split("\n")
	return lines
end

#Parse lines from file
#Input: line of text from the file
#Output: Array of columns / fields from the line
def parse_csv_line(text_line)
	columns = text_line.split(",")
	values = []
	columns.each { |x| values << x.strip}
	return values
end

#create an array of the arrays - database
def build_database(filename)
	db = []
	lines = get_file_lines(filename)
	lines.each { |x| db << parse_csv_line(x) }
	#create new instance of Onfidoer for each item in the array
	db.each { |x| Onfidoer.new(*x) }  #there was a problem with this line 
end

db = build_database(filename)

x = $stdin.gets.chomp.to_i
list = db.combination(x).to_a

puts list[2]








