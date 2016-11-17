require 'csv'
require_relative './onfidoer'

class GroupGenerator
	def initialize(onfidoers, number)
		@onfidoers = onfidoers
		@number = number
	end

	def sliced_groups
		shuffled_list = @onfidoers.shuffle
		@groups = shuffled_list.each_slice(@number).to_a
	end
	
	#save groups to CSV
	def save_groups_to_csv
		CSV.open("groups.csv", "w") do | csv | 
			@groups.each do |row|
				csv << row
			end
		end
	end

	def group_divider
		#if group size (no elements in array) is <num then share in other groups
		if @groups[-1].length < @number
			 #@groups[0] << @groups[-1][0]
				@groups[-1].each { |x| @groups[0] << x }
		end

		#if @groups[-1].length < @number
		#i = 0
		#until x == @number do |x|
		#@groups[-1].each { |x| @groups[i] << x }
	end
		

		
	def display_groups
		@groups.each_with_index do | group, index |
			puts "Group n. #{index + 1}"
			@groups.each { | name | puts name }
		end
	end

	def display_teams(num)
	end
end
