write_file, to_file = ARGV

puts "This is going to write to #{write_file} and the copy in reverse to #{to_file}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

#puts "Opening the file..."
target = open(write_file, 'w')

#puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the write file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")
target.close

puts "That's done. Now I'm copying them to #{to_file} in reverse order."

#target = open(to_file, 'w')

in_file = open(write_file)
indata = in_file.read

out_file = open(to_file, 'w')
out_file.write(indata)

out_file.close
in_file.close