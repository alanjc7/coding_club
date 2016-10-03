#Read filename as first argument
filename = ARGV.first

#Read lines from file
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
	#split the lines by comma
	columns = text_line.split(",")
	#but we need to remove some of them have spaces
	#create an empty array
	values = []
	#add new values to the array by using built in function strip which strips spaces
	columns.each { |x| values << x.strip}
	return values
end

#Find out what type it will return
puts get_file_lines(filename).class

puts get_file_lines(filename)

puts "_________________________"

lines = get_file_lines(filename)
puts parse_csv_line(lines[0])

#create an array of the arrays - database
def build_database(filename)
	#define empty array
	db = []
	#get strings from csv file by calling previously defined function
	lines = get_file_lines(filename)
	#separate each line into an array using the previously defined function and insert into the empty array
	lines.each { |x| db << parse_csv_line(x) }
	return db
end

puts build_database(filename)

puts "_________________________"

db = build_database(filename)
#first_name = 
#last_name = 

def find_my_join_date(db, first_name, last_name)
	# use each to search each array and then when matched print the [4] element to give the date
	x = db.select { |a| a[0] == first_name and a[1] == last_name}
	puts "#{x[0][4]}"
	return x[4]
end

puts find_my_join_date(db, "Stefania", "Cardenas")

puts "__________________________"

#create pair of two people not from same department
#joining date is 2 months apart

#sfsdfg
pairs = db.combination(2).to_a
puts pairs
