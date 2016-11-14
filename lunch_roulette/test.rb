require_relative "./onfidoer"
require 'date'

myself = Onfidoer.new("Alan", "Carrie", "04/02/2016", "Service Delivery", "ODT")

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
