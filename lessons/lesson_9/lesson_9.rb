class Dog
	def initialize(breed_, name_)
		@breed = breed_
		@name = name_
	end

	#methods
	def display
		puts "Hello! My name is #{@name} and I am a #{@breed}"
	end

end

my_dogs = []
puppy_1 = Dog.new("sausage dog", "Toby")
puppy_2 = Dog.new("golden retriver", "Spot")

my_dogs << puppy_1
my_dogs << puppy_2

my_dogs.each do |d|
	d.display
end

puts "_" * 70

my_dogs.each do |s|
	puts s
end
