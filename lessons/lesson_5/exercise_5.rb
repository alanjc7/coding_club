def i_do_nothing()
end

i_do_nothing()

def is_even?(number)
	ans = number%2 
	if ans == 1 
		a = false
	else 
		a = true
	end
	return a 
end

is_3_even = is_even?(3)
is_4_even = is_even?(4)
is_5_even = is_even?(5)

puts is_3_even

puts is_4_even

puts is_5_even

puts is_even?(7)

#for new branch only