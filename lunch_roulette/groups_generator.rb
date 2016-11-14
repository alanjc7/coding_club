require 'csv'

class GroupGenerator
	def initialize(onfidoers)
		@onfidoers = onfidoers
	end

	def get_groups_of(num)
		shuffled_list = @onfidoers.shuffle
		groups = shuffled_list.each_slice(num).to_a
	end
	
	#save groups to CSV - change so it writes over file each time
	def save_groups_to_csv(num)
		groups = get_groups_of(num)
		#x = groups.length
		#until n == x do 
		CSV.open("groups.csv", "w") do |csv|
			csv << groups
		end

		#groups = []
		#groups << shuffled_list.each_slice(num)
		#puts groups.class
		#if group size (no elements in array) is <num then share in other groups
		#if groups[-1].len < num
		#	groups[-1].each { |x| x << groups[1] }
		#end
	end

	def display_groups(num)
		groups = get_groups_of(num)
		groups.each_with_index do | group, index |
			puts "Group n. #{index + 1}"
			group.each { | name | puts name }
		end
	end
end
