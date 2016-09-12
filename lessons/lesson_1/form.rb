#gets will take a user input
print "What's your name?"
name = gets.chomp #chomp get rid of the space from pressing enter

print "What's your job title?" #using print means the terminal will ask for the input on the same line
job_title = gets.chomp

print "What's your team name?"
team = gets.chomp

print "How long have you worked at Onfido?"
seniority = gets.chomp

print "Are you interested in joining lunch roulette?"
availability = gets.chomp

puts "Output my nice result"

puts "Attendee name: #{name.capitalize!}"  #capitalize only capitalizes the first letter - upcase does the whole string
puts "Job title: #{job_title.upcase!}" #! is a convection which tells the reader that it is changing something
puts "Team: #{team}"
puts "Seniority: #{seniority}"
puts "Availability: #{availability}"

