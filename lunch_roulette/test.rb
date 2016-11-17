require_relative "./onfidoer"
require_relative "./groups_generator"
require 'date'
require 'csv'

myself = Onfidoer.new("Alan", "Carrie", "Service Delivery", "ODT", "04/02/2016")

myself.display_name

puts myself.year_joined

puts myself.days_with_company

=begin
Testing 
join_date = Date.parse("04/02/2016").strftime("%Y-%m-%d")
puts join_date

today = Date::today
another_day = Date.parse("04/02/2016")
diff = today - another_day
puts diff
=end

array = [[1, 2, 3], [3, 4, 5], [6, 7]]

#csv = array.map(&:to_csv).join
#puts csv.class

puts array.length

puts array[0].length

array[0] << array[2][0]

array[1] << array[2][1]

puts array[0].length